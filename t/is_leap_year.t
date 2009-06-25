#!/usr/bin/perl

use strict;
use warnings;

use Test::More;

use_ok( "MyDate" );

my %year =
  (
   2008 => 1,
   2009 => 0,
   1900 => 0,
   2000 => 1,
  );

my %result_text =
  (
   '1' => '',
   '0' => ' not',
  );

my $year;
for $year ( keys %year ) {
    is ( !!MyDate->is_leap_year($year), !!$year{$year},
	 "$year is$result_text{$year{$year}} a leap year." );
}

done_testing();
