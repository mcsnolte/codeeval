#!/usr/bin/env perl

=head1 DESCRIPTION

Write a program to read a multiple line text file and write the 'N' longest
lines to stdout. Where the file to be read is specified on the command line.

=cut

use strict;
use warnings;

my %lines;
my $num;

while (<DATA>) {
	chomp;
	unless ( defined $num ) {
		$num = int $_;
		next;
	}
	$lines{$_} = length($_);
}

foreach my $line ( reverse sort { $lines{$a} <=> $lines{$b} } keys %lines ) {
	print "$line\n";
	last unless --$num;
}

exit(0);

__DATA__
2
Hello World
CodeEval
Quick Fox
A
San Francisco
