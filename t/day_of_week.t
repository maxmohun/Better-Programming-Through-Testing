#!/usr/bin/perl

use strict;
use warnings;

use Test::More;

use_ok( "MyDate" );

# Test each day of week.
my %date = (
   '2009-06-21' => 'Sunday',
   '2009-06-22' => 'Monday',
   '2009-06-23' => 'Tuesday',
   '2009-06-24' => 'Wednesday',
   '2009-06-25' => 'Thursday',
   '2009-06-26' => 'Friday',
   '2009-06-27' => 'Saturday',
  );

# TODO: Random data generation.

my $date;
for $date ( keys %date ) {
    my @a = split '-', $date;
    my $dow = MyDate->day_of_week(@a);
    is ( $dow, $date{$date}, "$date is $dow." );
}

done_testing();
