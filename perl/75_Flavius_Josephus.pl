#!/usr/bin/env perl

=head1 DESCRIPTION

Flavius Josephus was a famous Jewish historian of the first century, at the
time of the destruction of the Second Temple. According to legend, during the
Jewish-Roman war he was trapped in a cave with a group of soldiers surrounded
by Romans. Preferring death to capture, the Jews decided to form a circle and,
proceeding around it, to kill every j'th person remaining until no one was
left. Josephus found the safe spot in the circle and thus stayed alive.

Write a program that returns a list of n people, numbered from 0 to n-1, in the
order in which they are executed.

=cut

use strict;
use warnings;
use DDP;

while (<DATA>) {
	chomp;
	my ( $n, $m ) = split /,/;
	my @num = ( 0 .. $n - 1 );

	my @d;
	my $i = -1;
	while ( scalar @num ) {
		$i += $m;
		if ( $i >= scalar @num ) {
			$i = $i % scalar @num;    # loop off back to front
		}
		push @d, splice( @num, $i--, 1 );
		$i = scalar @num - 1 if $i < 0;    # loop off front to back
	}
	print join( ' ', @d ), "\n";
}
exit(0);

__DATA__
10,3
5,2
4,9
