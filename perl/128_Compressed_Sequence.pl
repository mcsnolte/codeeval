#!/usr/bin/env perl

=head1 DESCRIPTION

Assume that someone dictates you a sequence of numbers and you need to write it
down. For brevity, he dictates it as follows: first says the number of
consecutive identical numbers and then says the number itself. E.g. The
sequence 1 1 3 3 3 2 2 2 2 14 14 14 11 11 11 2 will be dictated as "Two times
one, three times three, four times two, three times fourteen, three times
eleven, one time two", so you will write down the sequence 2 1 3 3 4 2 3 14 3
11 1 2. The challenge is to write the program which compresses the given
sequence using this approach.

=cut

use strict;
use warnings;

while (<DATA>) {
	chomp;
	my @nums = split /\s/;
	my $last = $nums[0];
	my $c    = 0;
	my @a;
	foreach my $n (@nums) {
		if ( $last != $n ) {
			push @a, "$c $last";
			$last = $n;
			$c    = 0;
		}
		$c++;
	}
	push @a, sprintf( '%i %i', $c, $nums[-1] ) if $c != 0;
	print join( ' ', @a ), "\n";
}
exit(0);

__DATA__
40 40 40 40 29 29 29 29 29 29 29 29 57 57 92 92 92 92 92 86 86 86 86 86 86 86 86 86 86
73 73 73 73 41 41 41 41 41 41 41 41 41 41
1 1 3 3 3 2 2 2 2 14 14 14 11 11 11 2
7
