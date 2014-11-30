
package Paws::EC2::CancelSpotInstanceRequests {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has SpotInstanceRequestIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SpotInstanceRequestId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelSpotInstanceRequests');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CancelSpotInstanceRequestsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CancelSpotInstanceRequests - Arguments for method CancelSpotInstanceRequests on Paws::EC2

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelSpotInstanceRequests on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method CancelSpotInstanceRequests.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to CancelSpotInstanceRequests.

As an example:

  $service_obj->CancelSpotInstanceRequests(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 DryRun => Bool

  

=head2 B<REQUIRED> SpotInstanceRequestIds => ArrayRef[Str]

  

One or more Spot Instance request IDs.












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for CancelSpotInstanceRequests in Paws::EC2

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
