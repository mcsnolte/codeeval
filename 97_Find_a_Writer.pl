#!/usr/bin/env perl

=head1 DESCRIPTION

You have a set of rows with names of famous writers encoded inside. Each row is
divided into 2 parts by pipe char (|). The first part has a writer's name. The
second part is a "key" to generate a name.

Your goal is to go through each number in the key (numbers are separated by
space) left-to-right. Each number represents a position in the 1st part of a
row. This way you collect a writer's name which you have to output.

=cut

use strict;
use warnings;

while ( my $line = <DATA> ) {
	chomp $line;
	my ( $code, $key ) = split /\|/, $line;
	my @chars = split //, $code;
	my $name = join( '', map { $chars[ $_ - 1 ] } grep { /\d/ } split( /\s+/, $key ) );
	print "$name\n";
}
exit(0);

__DATA__
osSE5Gu0Vi8WRq93UvkYZCjaOKeNJfTyH6tzDQbxFm4M1ndXIPh27wBA rLclpg| 3 35 27 62 51 27 46 57 26 10 46 63 57 45 15 43 53
3Kucdq9bfCEgZGF2nwx8UpzQJyHiOm0hoaYP6ST1WM7Nks5XjrR4IltBeDLV vA| 2 26 33 55 34 50 33 61 44 28 46 32 28 30 3 50 34 61 40 7 1 31
