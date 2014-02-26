#!/usr/bin/env perl

=head1 DESCRIPTION

Write a program to determine the number of 1 bits in the internal
representation of a given integer.

=cut

use strict;
use warnings;

while ( my $num = <DATA> ) {
	chomp $num;
	my $ones = 0;
	while ($num) {
		$ones += $num & 1;
		$num >>= 1;
	}
	print $ones, "\n";
}
exit(0);

__DATA__
10
22
56
