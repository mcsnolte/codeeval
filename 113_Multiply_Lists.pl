#!/usr/bin/env perl

=head1 DESCRIPTION

You have 2 lists of positive integers. Write a program which multiplies
corresponding elements in these lists.

=cut

use strict;
use warnings;

while (<DATA>) {
	chomp;
	my ( $a, $b ) = split /\s*\|\s*/;
	my @a = split /\s/, $a;
	my @b = split /\s/, $b;
	my @ans = map { $_ * shift @b } @a;
	print join( ' ', @ans ), "\n";
}
exit(0);

__DATA__
9 0 6 | 15 14 9
5 | 8
13 4 15 1 15 5 | 1 4 15 14 8 2
