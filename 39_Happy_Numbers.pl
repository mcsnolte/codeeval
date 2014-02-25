#!/usr/bin/env perl

=head1 DESCRIPTION

A happy number is defined by the following process. Starting with any positive
integer, replace the number by the sum of the squares of its digits, and repeat
the process until the number equals 1 (where it will stay), or it loops
endlessly in a cycle which does not include 1. Those numbers for which this
process ends in 1 are happy numbers, while those that do not end in 1 are
unhappy numbers.

=cut

use strict;
use warnings;

while (<DATA>) {
	chomp;
	my %seen;
	print is_happy( $_, \%seen ), "\n";
}

sub is_happy {
	my $num    = shift;
	my $seen_r = shift;

	my $sum = 0;
	$sum += $_**2 for split //, $num;

	return 1 if $sum == 1;
	return 0 if $seen_r->{$sum};
	$seen_r->{$num} = 1;

	return is_happy( $sum, $seen_r );
}
exit(0);

__DATA__
1
7
22
