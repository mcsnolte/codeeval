#!/usr/bin/env perl

=head1 DESCRIPTION

A number is a self-describing number when (assuming digit positions are labeled
0 to N-1), the digit in each position is equal to the number of times that that
digit appears in the number.

=cut

use strict;
use warnings;

while (<DATA>) {
	chomp;
	print is_selfie($_), "\n";
}

sub is_selfie {
	my $num = shift;

	my @digits = split //, $num;
	foreach my $i ( 0 .. scalar @digits - 1 ) {
		my $count = scalar grep { $_ == $i } @digits;
		return 0 unless $count == $digits[$i];
	}
	return 1;
}
exit(0);

__DATA__
2020
22
1210
