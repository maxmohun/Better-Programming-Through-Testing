package MyDate;

use strict;
use warnings;

=head3 is_leap_year

  my $is_leap_year = MyDate->is_leap_year($year);

Calculates if $year is a leap year.

Return true if it is, false if not.

=cut

sub is_leap_year {
    my $class = shift;
    my $year  = shift;

    my $leap_p = not $year % 4;

    if ( $leap_p ) {
	$leap_p = $year % 100;
    }

    if ( not $leap_p ) {
	$leap_p = 1 if not $year % 400;
    }

    return $leap_p;
}

1;
