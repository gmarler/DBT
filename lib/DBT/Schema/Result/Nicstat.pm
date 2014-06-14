package DBT::Schema::Result::Nicstat;

use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->load_components(qw/InflateColumn::DateTime/);

__PACKAGE__->table('nicstat');

__PACKAGE__->add_columns(
  'nicstat_id' => {
    data_type         => 'integer',
    is_auto_increment => 1,
    is_nullable       => 0,
  },
  'timestamp' => {
    data_type         => 'timestamp with timezone',
    is_nullable       => 0,
  },
);

__PACKAGE__->set_primary_key( 'nicstat_id' );

1;
