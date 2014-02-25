#!/usr/bin/env perl

=head1 DESCRIPTION

Given two integers N and M, calculate N Mod M (without using any inbuilt
modulus operator).

=cut

use strict;
use warnings;

while (<DATA>) {
	chomp;
	my ( $n, $m ) = split /,/;
	my $mod = ( $n - int( $n / $m ) * $m );
	print $mod, "\n";
}
exit(0);

__DATA__
20,6
2,3
