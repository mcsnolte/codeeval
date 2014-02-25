#!/usr/bin/env perl

=head1 DESCRIPTION

You have received a text encoded with Morse code and want to decode it.

=cut

use strict;
use warnings;

# the webpage i got the lookup from had things reversed :\
my %mc = reverse(
	qw/
	  A .-
	  B -...
	  C -.-.
	  D -..
	  E .
	  F ..-.
	  G --.
	  H ....
	  I ..
	  J .---
	  K -.-
	  L .-..
	  M --
	  N -.
	  O ---
	  P .--.
	  Q --.-
	  R .-.
	  S ...
	  T -
	  U ..-
	  V ...-
	  W .--
	  X -..-
	  Y -.--
	  Z --..
	  Ä .-.-
	  Á .--.-
	  Å .--.-
	  É ..-..
	  Ñ --.--
	  Ö ---.
	  Ü ..--
	  0 -----
	  1 .----
	  2 ..---
	  3 ...--
	  4 ....-
	  5 .....
	  6 -....
	  7 --...
	  8 ---..
	  9 ----.
	  /,
	' ' => '_',    # space helper
);

while ( my $line = <DATA> ) {
	chomp $line;
	$line =~ s/  / _ /g;
	print join( '', map { $mc{$_} } split( /\s/, $line ) ) . "\n";
}

__DATA__
.- ...- ..--- .-- .... .. . -.-. -..-  ....- .....
-... .... ...--
