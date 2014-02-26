#!/usr/bin/env perl

=head1 DESCRIPTION

Having coordinates of the center of a circle, it's radius and coordinates of a
point you need to define whether this point is located inside of this circle.

=cut

use strict;
use warnings;

while ( my $line = <DATA> ) {
	chomp $line;
	my ( $junk, $x0, $y0, $r, $x1, $y1 ) = split /[^0-9\.-]+/, $line;
	my $d = sqrt( ( $x0 - $x1 )**2 + ( $y0 - $y1 )**2 );
	print $d < $r ? "true\n" : "false\n";
}
exit(0);

__DATA__
Center: (2.12, -3.48); Radius: 17.22; Point: (16.21, -5)
Center: (5.05, -11); Radius: 21.2; Point: (-31, -45)
Center: (-9.86, 1.95); Radius: 47.28; Point: (6.03, -6.42)
