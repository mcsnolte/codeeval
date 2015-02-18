#!/usr/bin/env perl

=head1 DESCRIPTION

In this challenge you're presented with a situation in which you need to output
big symbols on devices which only support ASCII characters and single,
fixed-width fonts. To do this you're going to use pseudo-graphics to ‘draw’
these big symbols.

=cut

use strict;
use warnings;

my @big_lines = qw/
  -**----*--***--***---*---****--**--****--**---**--
  *--*--**-----*----*-*--*-*----*-------*-*--*-*--*-
  *--*---*---**---**--****-***--***----*---**---***-
  *--*---*--*-------*----*----*-*--*--*---*--*----*-
  -**---***-****-***-----*-***---**---*----**---**--
  --------------------------------------------------
  /;

while ( my $line = <DATA> ) {
	chomp $line;
	$line =~ s/\D//g;
	my @digits = split( //, $line );
	foreach my $row (@big_lines) {
		foreach my $d (@digits) {
			print substr( $row, $d * 5, 5 );
		}
		print "\n";
	}
}
exit(0);

__DATA__
3.1415926
1.41421356
01-01-1970
2.7182818284
4 8 15 16 23 42
