#!/usr/bin/env perl

=head1 DESCRIPTION

Write a program to find the first non repeated character in a string.

=cut

use strict;
use warnings;

while ( my $word = <DATA> ) {
	chomp $word;
	my %counts;
	foreach ( split //, $word ) {
		$counts{$_}++;
	}
	my %ind = map { $_ => index( $word, $_ ) } grep { $counts{$_} == 1 } keys %counts;
	my ($first) = sort { $ind{$a} <=> $ind{$b} } keys %ind;
	print $first, "\n";
}
exit(0);

__DATA__
yellow
tooth
