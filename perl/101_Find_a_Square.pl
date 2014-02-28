#!/usr/bin/env perl

=head1 DESCRIPTION

You have coordinates of four points on a plane. Check whether they make a
square.

	x0,y0 ------ x1,y1
	  |            |
	  |            |
	  |            |
	  |            |
	x3,y3 ------ x2,y2

=cut

use strict;
use warnings;

while (<DATA>) {
	chomp;
	my ( $junk, $x0, $y0, $x1, $y1, $x2, $y2, $x3, $y3 ) = split /[^\d.\-]+/;

	my $n_edge   = sqrt( ( $x0 - $x1 )**2 + ( $y0 - $y1 )**2 );
	my $e_edge   = sqrt( ( $x1 - $x2 )**2 + ( $y1 - $y2 )**2 );
	my $s_edge   = sqrt( ( $x2 - $x3 )**2 + ( $y2 - $y3 )**2 );
	my $w_edge   = sqrt( ( $x0 - $x3 )**2 + ( $y0 - $y3 )**2 );
	my $lr_cross = sqrt( ( $x0 - $x2 )**2 + ( $y0 - $y2 )**2 );
	my $rl_cross = sqrt( ( $x1 - $x3 )**2 + ( $y1 - $y3 )**2 );

	# sort so that we can ignore order of coords
	my @s = sort { $a <=> $b } ( $n_edge, $e_edge, $s_edge, $w_edge, $lr_cross, $rl_cross );

	if (
		$n_edge > 0          # points can't be on top of each other
		&& $s[0] == $s[1]    # 1 == 2
		&& $s[1] == $s[2]    # 2 == 3
		&& $s[2] == $s[3]    # 3 == 4
		&& $s[4] == $s[5]    # diagonals
	  )
	{
		print "true\n";
	}
	else {
		print "false\n";
	}
}

exit(0);

__DATA__
(1,6), (6,7), (2,7), (9,1)
(4,1), (3,4), (0,5), (1,2)
(4,6), (5,5), (5,6), (4,5)
