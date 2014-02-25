#!/usr/bin/env perl

=head1 DESCRIPTION

Print out the grade school multiplication table upto 12*12.

=cut

use strict;
use warnings;

foreach my $x ( 1 .. 12 ) {
	foreach my $y ( 1 .. 12 ) {
		my $p = $x * $y;
		if ( $y == 1 ) {
			print $p;
		}
		else {
			printf '%4i', $p;
		}
	}
	print "\n";
}
exit(0);

