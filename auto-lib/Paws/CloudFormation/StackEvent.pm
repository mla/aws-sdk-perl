package Paws::CloudFormation::StackEvent;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has EventId => (is => 'ro', isa => 'Str', required => 1);
  has LogicalResourceId => (is => 'ro', isa => 'Str');
  has PhysicalResourceId => (is => 'ro', isa => 'Str');
  has ResourceProperties => (is => 'ro', isa => 'Str');
  has ResourceStatus => (is => 'ro', isa => 'Str');
  has ResourceStatusReason => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str', required => 1);
  has StackName => (is => 'ro', isa => 'Str', required => 1);
  has Timestamp => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::StackEvent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFormation::StackEvent object:

  $service_obj->Method(Att1 => { ClientRequestToken => $value, ..., Timestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFormation::StackEvent object:

  $result = $service_obj->Method(...);
  $result->Att1->ClientRequestToken

=head1 DESCRIPTION

The StackEvent data type.

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

  The token passed to the operation that generated this event.

All events triggered by a given stack operation are assigned the same
client request token, which you can use to track operations. For
example, if you execute a C<CreateStack> operation with the token
C<token1>, then all the C<StackEvents> generated by that operation will
have C<ClientRequestToken> set as C<token1>.

In the console, stack operations display the client request token on
the Events tab. Stack operations that are initiated from the console
use the token format I<Console-StackOperation-ID>, which helps you
easily identify the stack operation . For example, if you create a
stack using the console, each stack event would be assigned the same
token in the following format:
C<Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002>.


=head2 B<REQUIRED> EventId => Str

  The unique ID of this event.


=head2 LogicalResourceId => Str

  The logical name of the resource specified in the template.


=head2 PhysicalResourceId => Str

  The name or unique identifier associated with the physical instance of
the resource.


=head2 ResourceProperties => Str

  BLOB of the properties used to create the resource.


=head2 ResourceStatus => Str

  Current status of the resource.


=head2 ResourceStatusReason => Str

  Success/failure message associated with the resource.


=head2 ResourceType => Str

  Type of resource. (For more information, go to AWS Resource Types
Reference
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html)
in the AWS CloudFormation User Guide.)


=head2 B<REQUIRED> StackId => Str

  The unique ID name of the instance of the stack.


=head2 B<REQUIRED> StackName => Str

  The name associated with a stack.


=head2 B<REQUIRED> Timestamp => Str

  Time the status was updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

