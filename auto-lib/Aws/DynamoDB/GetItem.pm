
package Aws::DynamoDB::GetItem {
  use Moose;
  has AttributesToGet => (is => 'ro', isa => 'ArrayRef[Str]');
  has ConsistentRead => (is => 'ro', isa => 'Bool');
  has Key => (is => 'ro', isa => 'Aws::DynamoDB::Key', required => 1);
  has ReturnConsumedCapacity => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetItem');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DynamoDB::GetItemResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;