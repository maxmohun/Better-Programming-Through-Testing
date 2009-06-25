package MyDate;

use strict;
use warnings;

=head3 is_leap_year

  my $is_leap_year = MyDate->is_leap_year($year);

Tests if $year is a leap year.

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

=head3 day_of_week

  my $dow = MyDate->day_of_week($year, $month, $day);

Returns the named $dow for the $year, $month and $day.

    print MyDate->day_of_week(2009, 12, 25); # Thursday.

=cut

sub day_of_week {
    my $class = shift;
    my ($year, $month, $day) = @_;

    my $dow;
    return $dow;
}

1;
