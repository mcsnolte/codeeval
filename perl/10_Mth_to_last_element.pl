#!/usr/bin/env perl

=head1 DESCRIPTION

Write a program to determine the Mth to last element of a list.

=cut

use strict;
use warnings;

while (<DATA>) {
	chomp;
	my @c = split /\s+/;
	my $n = pop @c;
	if ( $n <= scalar @c ) {
		print $c[ -$n ], "\n";
	}
}
exit(0);

__DATA__
a b c d 4
e f g h 2
