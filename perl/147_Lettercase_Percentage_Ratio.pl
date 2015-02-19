#!/usr/bin/env perl

=head1 DESCRIPTION

Your task is to write a program which determines (calculates) the percentage
ratio of lowercase and uppercase letters.

=cut

use strict;
use warnings;

while ( my $line = <DATA> ) {
	chomp $line;
	my $total = length $line;
	my $upper = $line =~ tr/[A-Z]//;

	printf "lowercase: %0.02f uppercase: %0.02f\n", ( $total - $upper ) / $total * 100, $upper / $total * 100;
}
exit(0);

__DATA__
thisTHIS
AAbbCCDDEE
N
UkJ
