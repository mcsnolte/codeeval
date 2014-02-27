#!/usr/bin/env perl

=head1 DESCRIPTION

A Pascals triangle row is constructed by looking at the previous row and adding
the numbers to its left and right to arrive at the new value. If either the
number to its left/right is not present, substitute a zero in it's place. More
details can be found here: Pascal's triangle. E.g. a Pascal's triangle upto a
depth of 6 can be shown as:

	1       1
	2      1 1
	3     1 2 1
	4    1 3 3 1
	5   1 4 6 4 1
	6  1 5 X X 5 1
	7 1 6152015 6 1

=cut

use strict;
use warnings;

my @ordered;
my %answers;
my $max = 0;
while (<DATA>) {
	chomp;
	push @ordered, $_;
	$answers{$_} = 1;
	$max = $_ if $_ > $max;
}

for my $num ( 1 .. $max ) {
	my @p = ( [1] );
	my $r = 2;
	while ( $r <= $num ) {
		my @p2 = (1);
		my $c  = 1;

		# Do half...
		while ( $c < int( $r / 2 + .5 ) ) {
			push @p2, $p[-1][ $c - 1 ] + $p[-1][$c];
			$c++;
		}

		# then dupe first half in reverse
		my @p2b = reverse @p2;
		shift @p2b if $r % 2 != 0;
		push @p2, @p2b;

		push @p, \@p2;
		$r++;
	}
	$answers{$num} = join( ' ', map { @{$_} } @p );
}

print join( "\n", @answers{@ordered} ), "\n";

exit(0);

__DATA__
3
10
6
