#!/usr/bin/env perl

=head1 DESCRIPTION

There is a game where each player picks a number from 1 to 9, writes it on a
paper and gives to a guide. A player wins if his number is the lowest unique.
We may have 10-20 players in our game.

=cut

use strict;
use warnings;

while ( my $line = <DATA> ) {
	chomp $line;
	my ( %nums, %pos, $i );
	$i = 0;
	foreach ( split /\s/, $line ) {
		$nums{$_}++;
		$pos{$_} = ++$i;
	}
	my ($low) = sort { $a <=> $b } grep { $nums{$_} == 1 } keys %nums;
	print $low ? $pos{$low} : 0;
	print "\n";
}
exit(0);

__DATA__
3 3 9 1 6 5 8 1 5 3
9 2 9 9 1 8 8 8 2 1 1
