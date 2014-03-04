#!/usr/bin/env perl

=head1 DESCRIPTION

Sequence 011212201220200112 ... constructed as follows: first is 0, then
repeated the following action: already written part is attributed to the right
with replacement 0 to 1, 1 to 2, 2 to 0. E.g.

  0 -> 01 -> 0112 -> 01121220 -> ...

Create an algorithm which determines what number is on the N-th position in the
sequence.

=head1 NOTES

I only need to count the following changes:

  #  chars
  0: 1                                                              0 0
  1: 2                    X [0]                                     0 0_
  2: 4     [2] = ^ [0]    X [2]                                   2 xx1_
  3: 8     [6] = ^ [2]        X [6]                               6 xxxx__2_
  4: 16   [14] = ^ [6]                 X [14]                    14 xxxxxxxx ______0_
  5: 32   [30] = ^ [14]                                  X [30]  30 xxxxxxxx xxxxxxxx ________ ______1_ ...
                        01121220 12202001 12202001 20010112 ...
                        12 3   4        5                 6

  #  chars
  0: 1
  1: 2                    X [0]
  2: 4     [ ] = ^ [ ]  X [0]
  3: 8     [ ] = ^ [ ]  X [0]
  4: 16    [0] = ^ [ ]  X [0]
  5: 32   [16] = ^ [0]                    X [16]
                        01121220 12202001 12202001 20010112 ...
                        12 3   4        5                 6

So work backwards and only count changes where the position is greater than
zero since it will change.

=cut

use strict;
use warnings;

while ( my $n = <DATA> ) {
	chomp $n;
	print "n: $n\n";

	# This was the key to starting... find the power of two
	# that was big enough to get to the necessary offset
	my $min_po2 = $n ? int( log($n) / log(2) ) : 0;
	print " min_po2: $min_po2\n";

	# Count the number of changes
	my $c = 0;

	# Work backwards from the INPUT's offset
	while ( $n > 0 ) {
		my $po2 = 2**$min_po2;

		my $t = $n - $po2;

		# When greater than zero it's in a position that
		# will change each time the pattern grows
		if ( $t >= 0 ) {
			$n = $t;
			$c++;
		}
		$min_po2--;
	}

	# Convert number of changes to the rotating digit
	printf( "changes: %i, answer: %i\n", $c, $c % 3 );
}

__DATA__
0
5
7
16
30
101
25684
