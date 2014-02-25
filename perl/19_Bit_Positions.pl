#!/usr/bin/env perl

=head1 DESCRIPTION

Given a number n and two integers p1,p2 determine if the bits in position p1
and p2 are the same or not. Positions p1 and p2 and 1 based.

=cut

use strict;
use warnings;

while (<DATA>) {
	chomp;
	next if m/^\s*$/;
	s/(^\s|\s*$)//g;
	my ( $num, $p1, $p2 ) = split /,/;

	if ( ( $num >> ( $p1 - 1 ) & 1 ) == ( $num >> ( $p2 - 1 ) & 1 ) ) {
		print "true\n";
	}
	else {
		print "false\n";
	}
}
exit(0);

__DATA__
86,2,3
125,1,2
