
package Paws::ElastiCache::TestFailoverResult;
  use Moose;
  has ReplicationGroup => (is => 'ro', isa => 'Paws::ElastiCache::ReplicationGroup');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::TestFailoverResult

=head1 ATTRIBUTES


=head2 ReplicationGroup => L<Paws::ElastiCache::ReplicationGroup>




=head2 _request_id => Str


=cut

