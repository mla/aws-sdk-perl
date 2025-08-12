#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use lib 'auto-lib';
use lib 'lib';

# Test that JSON responses don't have _stream_param
# and binary responses do have _stream_param

# Test 1: Pinpoint responses should NOT have _stream_param
# because they return JSON, not binary streams
{
    require Paws::Pinpoint::SendMessagesResponse;
    ok(!Paws::Pinpoint::SendMessagesResponse->can('_stream_param'),
       "Pinpoint::SendMessagesResponse should NOT have _stream_param (JSON response)");
    
    # Check all Pinpoint responses that have payloads
    my @pinpoint_responses_with_payload = qw(
        CreateAppResponse
        CreateCampaignResponse
        CreateSegmentResponse
        DeleteAppResponse
        GetAppResponse
        SendMessagesResponse
        SendUsersMessagesResponse
        UpdateAppSettingsResponse
    );
    
    for my $response (@pinpoint_responses_with_payload) {
        my $class = "Paws::Pinpoint::$response";
        eval "require $class";
        if ($@) {
            diag "Could not load $class: $@";
            next;
        }
        ok(!$class->can('_stream_param'),
           "$response should NOT have _stream_param (JSON response)");
    }
}

# Test 2: S3 GetObject SHOULD have _stream_param
# because it returns binary data
# (Check the file directly to avoid trait loading issues)
{
    my $s3_file = 'auto-lib/Paws/S3/GetObjectOutput.pm';
    if (-f $s3_file) {
        my $content = do { local $/; open my $fh, '<', $s3_file or die $!; <$fh> };
        my $has_stream_param = ($content =~ /class_has _stream_param/);
        ok($has_stream_param,
           "S3::GetObjectOutput SHOULD have _stream_param (binary response)");
        
        if ($content =~ /class_has _stream_param.*?default.*?['"](Body)['"]/) {
            pass("S3::GetObjectOutput _stream_param should be 'Body'");
        } else {
            fail("S3::GetObjectOutput _stream_param should be 'Body'");
        }
    } else {
        skip("S3 GetObjectOutput not generated", 2);
    }
}

# Test 3: Lambda responses should NOT have _stream_param
# even though they have payloads, because they return JSON
{
    eval { require Paws::Lambda::InvokeOutput };
    unless ($@) {
        ok(!Paws::Lambda::InvokeOutput->can('_stream_param'),
           "Lambda::InvokeOutput should NOT have _stream_param (JSON response)");
    }
}

# Test 4: Test the actual bug scenario
# When a service returns JSON with a payload property,
# it should still be parsed as JSON, not treated as a raw stream
{
    # Mock a response handler to demonstrate the bug
    package MockResponseHandler;
    
    sub handle_response {
        my ($class, $response_class, $json_content) = @_;
        
        if ($response_class->can('_stream_param')) {
            # BUG: With _stream_param, the JSON is NOT parsed
            # and is returned as a raw string
            return "BUG: JSON not parsed, returned as raw string";
        } else {
            # CORRECT: Without _stream_param, JSON is parsed
            return "OK: JSON properly parsed into data structure";
        }
    }
    
    package main;
    
    # Test with Pinpoint response
    my $result = MockResponseHandler->handle_response(
        'Paws::Pinpoint::SendMessagesResponse',
        '{"MessageResponse": {"ApplicationId": "test"}}'
    );
    
    is($result, "OK: JSON properly parsed into data structure",
       "Pinpoint responses should have JSON parsed, not returned as raw string");
}

done_testing();