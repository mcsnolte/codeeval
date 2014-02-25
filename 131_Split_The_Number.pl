#!/usr/bin/env perl

=head1 DESCRIPTION

You are given a number N and a pattern. The pattern consists of lowercase latin
letters and one operation "+" or "-". The challenge is to split the number and
evaluate it according to this pattern e.g.  1232 ab+cd -> a:1, b:2, c:3, d:2 ->
12+32 -> 44

=cut

use strict;
use warnings;

while (<DATA>) {
	chomp;
	my ( $nums, $pattern ) = split /\s/;
	my @n = split //, $nums;
	$pattern =~ s/[\w]/shift @n/eg;
	print eval($pattern), "\n";
}
exit(0);

__DATA__
3413289830 a-bcdefghij
776 a+bc
12345 a+bcde
1232 ab+cd
