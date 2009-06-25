#!/usr/bin/perl

use strict;
use warnings;

use Test::More;

use_ok( "MyDate" );

ok ( !MyDate->is_leap_year('2009'), "2009 is not a leap year." );
ok (  MyDate->is_leap_year('2008'), "2008 is a leap year." );
ok ( !MyDate->is_leap_year('1900'), "1900 is not a leap year" );
ok (  MyDate->is_leap_year('2000'), "2000 is a leap year." );

done_testing();
