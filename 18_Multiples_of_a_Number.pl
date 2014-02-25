#!/usr/bin/env perl

=head1 DESCRIPTION

Given numbers x and n, where n is a power of 2, print out the smallest multiple
of n which is greater than or equal to x. Do not use division or modulo
operator.

=cut

use strict;
use warnings;

while (<DATA>) {
	chomp;
	my ( $x, $n0 ) = split /,/;
	my $n = $n0;
	while ( $n < $x ) {
		$n += $n0;
	}
	print $n, "\n";
}

exit(0);

__DATA__
13,8
17,16
