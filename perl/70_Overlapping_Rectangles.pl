#!/usr/bin/env perl

=head1 DESCRIPTION

Given two axis aligned rectangles A and B, determine if the two overlap. The
rectangles considered overlapping if they have at least one common point.

Your program should accept as its first argument a path to a filename. Each
line in this file contains 8 comma separated co-ordinates. The co-ordinates are
upper left x of A, upper left y of A, lower right x of A, lower right y of A,
upper left x of B, upper left y of B, lower right x of B, lower right y of B.

=cut

use strict;
use warnings;

while (<DATA>) {
	chomp;

	# 0 -- +
	# |    |
	# |    |
	# + -- 1
	my ( $ax0, $ay0, $ax1, $ay1, $bx0, $by0, $bx1, $by1 ) = split /,/;

	if (
		(
			(    # horizontal
				( $ax0 <= $bx0 && $bx0 <= $ax1 ) || ( $ax0 <= $bx1 && $bx1 <= $ax1 )
			)
			&& (    # vertical
				( $ay0 >= $by0 && $by0 >= $ay1 ) || ( $ay0 >= $by1 && $by1 >= $ay1 )
			)
		)
		||          # a contains b
		(
			   $ax0 <= $bx0
			&& $bx0 <= $ax1
			&& $ax0 <= $bx1
			&& $bx1 <= $ax1
			&& $ay0 >= $by0
			&& $by0 >= $ay1
			&& $ay0 >= $by1
			&& $by1 >= $ay1
		)
		||          # b contains a
		(
			   $bx0 <= $ax0
			&& $ax0 <= $bx1
			&& $bx0 <= $ax1
			&& $ax1 <= $bx1
			&& $by0 >= $ay0
			&& $ay0 >= $by1
			&& $by0 >= $ay1
			&& $ay1 >= $by1
		)
	  )
	{
		print "True\n";
	}
	else {
		print "False\n";
	}
}
exit(0);

__DATA__
-3,3,-1,1,1,-1,3,-3
-3,3,-1,1,-2,4,2,2
-4,4,-1,1,-3,3,-2,2
