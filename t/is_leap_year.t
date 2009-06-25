#!/usr/bin/perl

use strict;
use warnings;

use Test::More;

use constant TRUE => 1==1;
use constant FALSE => ! TRUE;

use_ok( "MyDate" );

my %year =
  (
   2008 => TRUE,
   2009 => FALSE,
   1900 => FALSE,
   2000 => TRUE,
  );

my $year;
for $year ( keys %year ) {
    if ( $year{$year} ) {
	ok( MyDate->is_leap_year($year), "$year is a leap year" );
    } else {
	ok( ! MyDate->is_leap_year($year), "$year is not a leap year" );
    }
}

done_testing();
