#!/usr/bin/env perl

=head1 DESCRIPTION

You are given a sorted list of numbers with duplicates. Print out the sorted
list with duplicates removed.

=cut

use strict;
use warnings;

while (<DATA>) {
	chomp;
	my $line = $_;
	my %uniq = map { int($_) => 1 } split( /,/, $line );
	print join( ',', sort { $a <=> $b } keys %uniq ), "\n";
}
exit(0);

__DATA__
1,1,1,2,2,3,3,4,4
2,3,4,5,5
