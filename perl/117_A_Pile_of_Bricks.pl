#!/usr/bin/env perl

=head1 DESCRIPTION

You have a pile of bricks. Every brick has it's index number and coordinates of
opposite vertices.

You know that somewhere on the wall there is a rectangular hole, and you are
given coordinates of opposite vertices of that hole.

Determine which bricks may pass through that hole.

In situations where brick and hole have an equal sizes, we assume that it can
pass through this hole.

All the holes are two-dimensional. All of the bricks are three-dimensional.

=cut

use strict;
use warnings;

my $num = sub { $a <=> $b; };

while ( my $line = <DATA> ) {
	chomp $line;
	next unless $line =~ m/\d/;
	my $answers_r = get_bricks_that_fit( split( /\|/, $line ) );
	print scalar @{$answers_r} ? join( ',', sort $num @{$answers_r} ) : '-', "\n";
}

sub get_bricks_that_fit {
	my ( $hole,   $bricks ) = @_;
	my ( $hole_w, $hole_h ) = get_hole_dims($hole);

	my @answers;
	my $bricks_r = get_bricks($bricks);
	foreach my $brick_r ( @{$bricks_r} ) {
		if (   ( $brick_r->{x_w} <= $hole_w && $brick_r->{x_h} <= $hole_h )
			|| ( $brick_r->{y_w} <= $hole_w && $brick_r->{y_h} <= $hole_h )
			|| ( $brick_r->{z_w} <= $hole_w && $brick_r->{z_h} <= $hole_h ) )
		{
			push @answers, $brick_r->{num};
		}
	}
	return \@answers;
}

sub get_hole_dims {
	my $hole_coords = shift;
	my ( $junk, $x0, $y0, $x1, $y1 ) = split /[^0-9-]+/, $hole_coords;
	my $w = abs( $x1 - $x0 );
	my $h = abs( $y1 - $y0 );
	return sort $num ( $w, $h );
}

sub get_bricks {
	my $brick = shift;
	my @bricks;
	while (
		$brick =~ m/
		\(
			(?<num>\d+)
			\s
			\[
				(?<x0>-?\d+),
				(?<y0>-?\d+),
				(?<z0>-?\d+)
			\]
			\s
			\[
				(?<x1>-?\d+),
				(?<y1>-?\d+),
				(?<z1>-?\d+)
			\]
		\)
		;?/gx
	  )
	{
		push @bricks, calc_face_dims( {%+} );
	}
	return \@bricks;
}

sub calc_face_dims {
	my $brick_r = shift;
	@{$brick_r}{qw/z_w z_h/} = sort $num ( abs( $brick_r->{x0} - $brick_r->{x1} ), abs( $brick_r->{y0} - $brick_r->{y1} ) );
	@{$brick_r}{qw/y_w y_h/} = sort $num ( abs( $brick_r->{x0} - $brick_r->{x1} ), abs( $brick_r->{z0} - $brick_r->{z1} ) );
	@{$brick_r}{qw/x_w x_h/} = sort $num ( abs( $brick_r->{y0} - $brick_r->{y1} ), abs( $brick_r->{z0} - $brick_r->{z1} ) );

	return $brick_r;
}

exit(0);

__DATA__
[4,3] [3,-3]|(1 [10,9,4] [9,4,2])
[-1,-5] [5,-2]|(1 [4,7,8] [2,9,0]);(2 [0,7,1] [5,9,8])
[-4,-5] [-5,-3]|(1 [4,8,6] [0,9,2]);(2 [8,-1,3] [0,5,4])
