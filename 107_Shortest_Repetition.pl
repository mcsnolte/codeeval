#!/usr/bin/env perl

=head1 DESCRIPTION

Write a program to determine the shortest repetition in a string.  A string is
said to have period p if it can be formed by concatenating one or more
repetitions of another string of length p. For example, the string
"xyzxyzxyzxyz" has period 3, since it is formed by 4 repetitions of the string
"xyz". It also has periods 6 (two repetitions of "xyzxyz") and 12 (one
repetition of "xyzxyzxyzxyz").

=cut

use strict;
use warnings;

while ( my $line = <DATA> ) {
	chomp $line;
	foreach my $len ( 1 .. length $line ) {

		# TODO: find less lame way to split on number of chars
		my $p     = "." x $len;
		my @parts = grep { $_ } split /($p)/, $line;
		my $f     = shift @parts;
		next if grep { $_ ne $f } @parts;
		print "$len\n";
		last;
	}
}
exit(0);

__DATA__
abcabcabcabc
bcbcbcbcbcbcbcbcbcbcbcbcbcbc
dddddddddddddddddddd
adcdefg
