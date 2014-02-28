#!/usr/bin/env perl

=head1 DESCRIPTION

Given a list of numbers and a positive integer k, reverse the elements of the
list, k items at a time. If the number of elements is not a multiple of k, then
the remaining items in the end should be left as is.

=cut

use strict;
use warnings;

while (<DATA>) {
	chomp;
	my ( $nums, $step ) = split /;/;
	my @n = split /,/, $nums;
	my @o;
	while ( scalar @n >= $step ) {
		push @o, reverse splice @n, 0, $step;
	}
	push @o, @n;
	print join( ',', @o ), "\n";
}
exit(0);

__DATA__
1,2,3,4,5;2
1,2,3,4,5;3
