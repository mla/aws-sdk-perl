
package Paws::ECR::UploadLayerPart;
  use Moose;
  has LayerPartBlob => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'layerPartBlob' , required => 1);
  has PartFirstByte => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'partFirstByte' , required => 1);
  has PartLastByte => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'partLastByte' , required => 1);
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registryId' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);
  has UploadId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'uploadId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UploadLayerPart');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECR::UploadLayerPartResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::UploadLayerPart - Arguments for method UploadLayerPart on Paws::ECR

=head1 DESCRIPTION

This class represents the parameters used for calling the method UploadLayerPart on the 
Amazon EC2 Container Registry service. Use the attributes of this class
as arguments to method UploadLayerPart.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UploadLayerPart.

As an example:

  $service_obj->UploadLayerPart(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> LayerPartBlob => Str

The base64-encoded layer part payload.



=head2 B<REQUIRED> PartFirstByte => Int

The integer value of the first byte of the layer part.



=head2 B<REQUIRED> PartLastByte => Int

The integer value of the last byte of the layer part.



=head2 RegistryId => Str

The AWS account ID associated with the registry that you are uploading
layer parts to. If you do not specify a registry, the default registry
is assumed.



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository that you are uploading layer parts to.



=head2 B<REQUIRED> UploadId => Str

The upload ID from a previous InitiateLayerUpload operation to
associate with the layer part upload.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UploadLayerPart in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

