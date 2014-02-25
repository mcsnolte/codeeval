#!/usr/bin/env perl

=head1 DESCRIPTION

You are given a string 'S' and a character 't'. Print out the position of the
rightmost occurrence of 't' (case matters) in 'S' or -1 if there is none. The
position to be printed out is zero based.

=cut

use strict;
use warnings;

while (<DATA>) {
	chomp;
	my ( $word, $index ) = split /,/;
	print rindex( $word, $index ), "\n";
}
exit(0);

__DATA__
Hello World,r
Hello CodeEval,E
