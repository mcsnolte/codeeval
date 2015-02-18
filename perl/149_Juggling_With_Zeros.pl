#!/usr/bin/env perl

=head1 DESCRIPTION

In this challenge, you will deal with zero-based numbers. A zero-based number
has the following form: "flag" "sequence of zeroes" "flag" "sequence of
zeroes", and so on. The numbers are separated by a single space.

=cut

use strict;
use warnings;

while (<DATA>) {
	my @parts = split /\s/;
	my $bin   = '';
	while ( scalar @parts ) {
		my $flag = shift @parts;
		my $seq  = shift @parts;
		if ( $flag eq '0' ) {
			$bin .= $seq;
		}
		else {
			$bin .= '1' x length($seq);
		}
	}
	print eval("0b$bin"), "\n";
}
exit(0);

__DATA__
00 0 0 00 00 0
00 0
00 0 0 000 00 0000000 0 000
0 000000000 00 00
