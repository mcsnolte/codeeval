#!/usr/bin/env perl

=head1 DESCRIPTION

Having a string representation of a set of numbers you need to print this
numbers.

All numbers are separated by semicolon. There are up to 20 numbers in one line.
The numbers are "zero" to "nine"

=cut

use strict;
use warnings;

my %words = (
	zero  => 0,
	one   => 1,
	two   => 2,
	three => 3,
	four  => 4,
	five  => 5,
	six   => 6,
	seven => 7,
	eight => 8,
	nine  => 9,
);

while ( my $line = <DATA> ) {
	chomp $line;
	print join( '', map { $words{$_} } split( /;/, $line ) ), "\n";
}

exit(0);

__DATA__
zero;two;five;seven;eight;four
three;seven;eight;nine;two
