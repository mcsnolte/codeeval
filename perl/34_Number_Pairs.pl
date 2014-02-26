#!/usr/bin/env perl

=head1 DESCRIPTION

You are given a sorted array of positive integers and a number 'X'. Print out
all pairs of numbers whose sum is equal to X. Print out only unique pairs and
the pairs should be in ascending order.

=cut

use strict;
use warnings;

while (<DATA>) {
	chomp;
	my ( $ints, $num ) = split /;/;
	my @int = sort { $a <=> $b } split /,/, $ints;
	my $count = @int;

	my @pairs;
	foreach my $i ( 0 .. $count - 1 ) {
		my $j = $i;
		while ( $j++ < $count - 1 ) {
			if ( $int[$i] + $int[$j] == $num ) {
				push @pairs, [ $int[$i], $int[$j] ];
			}
		}
	}
	print( ( scalar @pairs ? join( ';', map { join( ',', @{$_} ) } @pairs ) : 'NULL' ), "\n" );

}
exit(0);

__DATA__
1,2,3,4,6;5
2,4,5,6,9,11,15;20
1,2,3,4;50
