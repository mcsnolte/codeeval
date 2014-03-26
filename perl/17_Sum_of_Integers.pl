#!/usr/bin/env perl

=head1 DESCRIPTION

Write a program to determine the largest sum of contiguous integers in a list.

=cut

use strict;
use warnings;

while ( my $line = <DATA> ) {
	chomp $line;
	my @nums = split /,\s*/, $line;
	my $max;
	foreach my $s0 ( 0 .. scalar @nums - 1 ) {
		my $sum = 0;
		foreach my $s ( $s0 .. scalar @nums - 1 ) {
			$sum += $nums[$s];
			$max = $sum if !defined $max || $sum > $max;
		}
	}
	print "$max\n";
}
exit(0);

__DATA__
-10, 2, 3, -2, 0, 5, -15
2,3,-2,-1,10
-1,1
