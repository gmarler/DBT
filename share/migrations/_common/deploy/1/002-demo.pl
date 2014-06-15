use strict;
use warnings;
use DBIx::Class::Migration::RunScript;
use DateTime;

migrate {
  my $nicstat_rs = shift->schema->resultset('Nicstat');

  my $dt = DateTime->now( time_zone => 'UTC' );

  $nicstat_rs->create({
      timestamp => $dt,
    });

  $dt->add( seconds => 1 );

  $nicstat_rs->create({
      timestamp => $dt, 
    });
};
