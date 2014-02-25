#!/usr/bin/env perl

=head1 DESCRIPTION

You are given two sorted list of numbers (ascending order). The lists
themselves are comma delimited and the two lists are semicolon delimited. Print
out the intersection of these two sets.

=cut

use strict;
use warnings;

while (<DATA>) {
	chomp;
	my ( $set1, $set2 ) = split /;/;
	my %a = map { $_ => 1 } split( /,/, $set1 );
	my %b = map { $_ => 1 } grep { $a{$_} } split( /,/, $set2 );
	print join( ',', sort { $a <=> $b } keys %b ), "\n";
}
exit(0);

__DATA__
1,2,3,4;4,5,6
20,21,22;45,46,47
7,8,9;8,9,10,11,12
