#!/usr/bin/perl

use strict;
use warnings;

use Test::More;

use_ok( "MyDate" );

# Test each day of week.
my @date = (
   [2009, 6, 21 => 'Sunday'],
   [2009, 6, 22 => 'Monday'],
   [2009, 6, 23 => 'Tuesday'],
   [2009, 6, 24 => 'Wednesday'],
   [2009, 6, 25 => 'Thursday'],
   [2009, 6, 26 => 'Friday'],
   [2009, 6, 27 => 'Saturday'],
  );

# TODO: Edge cases and bad input.

my $date_ar;
for $date_ar ( @date ) {
    my ($year, $month, $day, $dow_expected) = @$date_ar;
    my $dow = MyDate->day_of_week(@$date_ar);
    is ( $dow, $dow_expected, "$year $month $day is $dow." );
}

done_testing();
