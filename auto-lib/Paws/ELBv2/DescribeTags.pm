
package Paws::ELBv2::DescribeTags;
  use Moose;
  has ResourceArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTags');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELBv2::DescribeTagsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTagsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::DescribeTags - Arguments for method DescribeTags on Paws::ELBv2

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTags on the 
Elastic Load Balancing service. Use the attributes of this class
as arguments to method DescribeTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTags.

As an example:

  $service_obj->DescribeTags(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArns => ArrayRef[Str|Undef]

The Amazon Resource Names (ARN) of the resources.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTags in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

