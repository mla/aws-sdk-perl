
package Paws::RDS::AddRoleToDBCluster;
  use Moose;
  has DBClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddRoleToDBCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::AddRoleToDBCluster - Arguments for method AddRoleToDBCluster on Paws::RDS

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddRoleToDBCluster on the 
Amazon Relational Database Service service. Use the attributes of this class
as arguments to method AddRoleToDBCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddRoleToDBCluster.

As an example:

  $service_obj->AddRoleToDBCluster(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBClusterIdentifier => Str

The name of the DB cluster to associate the IAM role with.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role to associate with the
Aurora DB cluster, for example
C<arn:aws:iam::123456789012:role/AuroraAccessRole>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddRoleToDBCluster in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

