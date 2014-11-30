
package Paws::ELB::DescribeLoadBalancers {
  use Moose;
  has LoadBalancerNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has Marker => (is => 'ro', isa => 'Str');
  has PageSize => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELB::DescribeAccessPointsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancersResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::DescribeLoadBalancers - Arguments for method DescribeLoadBalancers on Paws::ELB

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeLoadBalancers on the 
Elastic Load Balancing service. Use the attributes of this class
as arguments to method DescribeLoadBalancers.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to DescribeLoadBalancers.

As an example:

  $service_obj->DescribeLoadBalancers(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 LoadBalancerNames => ArrayRef[Str]

  

A list of load balancer names associated with the account.










=head2 Marker => Str

  

An optional parameter used for pagination of results from this call. If
specified, the response includes only records beyond the marker.










=head2 PageSize => Int

  

The number of results returned in each page. The default is 400. You
cannot specify a page size greater than 400 or less than 1.












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for DescribeLoadBalancers in Paws::ELB

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
