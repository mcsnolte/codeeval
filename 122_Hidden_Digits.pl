#!/usr/bin/env perl

=head1 DESCRIPTION

In this challenge you're given a random string containing hidden and visible
digits. The digits are hidden behind lower case latin letters as follows: 0 is
behind 'a', 1 is behind ' b ' etc., 9 is behind 'j'. Any other symbol in the
string means nothing and has to be ignored. So the challenge is to find all
visible and hidden digits in the string and print them out in order of their
appearance.

=cut

use strict;
use warnings;

while ( my $line = <DATA> ) {
	chomp $line;
	$line =~ s/[^0-9a-j]//g;
	$line =~ s/([a-j])/ord($1)-97/eg;
	$line ||= 'NONE';
	print "$line\n";
}
exit(0);

__DATA__
abcdefghik
Xa,}A#5N}{xOBwYBHIlH,#W
(ABW>'yy^'M{X-K}q,
6240488
