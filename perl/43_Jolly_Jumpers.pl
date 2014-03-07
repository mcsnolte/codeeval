#!/usr/bin/env perl

=head1 DESCRIPTION

A sequence of n > 0 integers is called a jolly jumper if the absolute values of
the differences between successive elements take on all possible values 1
through n - 1. eg.

  1 4 2 3

is a jolly jumper, because the absolute differences are 3, 2, and 1,
respectively. The definition implies that any sequence of a single integer is a
jolly jumper. Write a program to determine whether each of a number of
sequences is a jolly jumper.

=cut

use strict;
use warnings;

while (<DATA>) {
	chomp;
	my ( $c, @nums ) = split /\s/;

	my $max = 0;
	my %test;

	foreach my $i ( 1 .. $c - 1 ) {
		my $d = abs( $nums[$i] - $nums[ $i - 1 ] );
		if ( !$d || $test{$d} ) {
			$max = 0;
			last;
		}
		$test{$d} = 1;
		$max = $d if $d > $max;
	}
	print $max == $c - 1 ? 'Jolly' : 'Not jolly', "\n";
}

exit(0);

__DATA__
4 1 4 2 3
5 10 9 5 2 4
4 3 4 5 6
