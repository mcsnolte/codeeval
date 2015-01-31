#!/usr/bin/env perl

=head1 DESCRIPTION

Write a program that outputs the value of angle, reducing its fractional part
to minutes and seconds.

=cut

use strict;
use warnings;

my $precision = 100_000;

while ( my $line = <DATA> ) {
    chomp($line);
    my $whole = int($line);
    my $frac  = int( $line * $precision ) - $whole * $precision;
    my $min   = int( $frac * 60 / $precision );
    my $sec   = ( $frac * 60 - $min * $precision ) * 60 / $precision;
    printf( qq{%i.%02i'%02i"\n}, $whole, $min, $sec );
}
exit(0);

__DATA__
330.39991833
0.001
14.64530319
0.25
254.16991217
149.85341938
311.61221084
220.01849991
92.71599751
180.0
236.64969834
0.001
0.0
119.01638523
155.86468856
292.48888153
0.25
328.41617803
22.54196633
0.5
270.54527205
90.0
119.09048674
271.22550798
305.34740667
