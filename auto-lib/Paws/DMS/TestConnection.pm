
package Paws::DMS::TestConnection;
  use Moose;
  has EndpointArn => (is => 'ro', isa => 'Str', required => 1);
  has ReplicationInstanceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TestConnection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::TestConnectionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::TestConnection - Arguments for method TestConnection on Paws::DMS

=head1 DESCRIPTION

This class represents the parameters used for calling the method TestConnection on the 
AWS Database Migration Service service. Use the attributes of this class
as arguments to method TestConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TestConnection.

As an example:

  $service_obj->TestConnection(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndpointArn => Str

The Amazon Resource Name (ARN) string that uniquely identifies the
endpoint.



=head2 B<REQUIRED> ReplicationInstanceArn => Str

The Amazon Resource Name (ARN) of the replication instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TestConnection in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

