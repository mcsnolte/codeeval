#!/usr/bin/env perl

=head1 DESCRIPTION

You have coordinates of 2 points and need to find the distance between them.

=cut

use strict;
use warnings;

while (<DATA>) {
	chomp;
	my ( $x1, $y1, $x2, $y2 ) = grep { /\d/ } split /[^\d-]/;
	print sqrt( ( $x1 - $x2 )**2 + ( $y1 - $y2 )**2 ), "\n";

}
exit(0);

__DATA__
(25, 4) (1, -6)
(47, 43) (-25, -11)
