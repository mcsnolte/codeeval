#!/usr/bin/env perl

=head1 DESCRIPTION

The major element in a sequence with the length of L is the element which
appears in a sequence more than L/2 times. The challenge is to find that
element in a sequence.

=cut

use strict;
use warnings;

LINE: while ( my $line = <DATA> ) {
	chomp $line;
	my @nums = split /,/, $line;
	my $len = scalar @nums;
	my %c;
	foreach my $n (@nums) {
		if ( ++$c{$n} > ( $len / 2 ) ) {
			print "$n\n";
			next LINE;
		}
	}
	print "None\n";
}

exit(0);

__DATA__
92,19,19,76,19,21,19,85,19,19,19,94,19,19,22,67,83,19,19,54,59,1,19,19
92,11,30,92,1,11,92,38,92,92,43,92,92,51,92,36,97,92,92,92,43,22,84,92,92
4,79,89,98,48,42,39,79,55,70,21,39,98,16,96,2,10,24,14,47,0,50,95,20,95,48,50,12,42
