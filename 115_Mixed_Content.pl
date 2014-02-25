#!/usr/bin/env perl

=head1 DESCRIPTION

You have a string of words and digits divided by comma. Write a program which
separates words with digits. You shouldn't change the order elements.

=cut

use strict;
use warnings;

while ( my $line = <DATA> ) {
	chomp $line;
	my ( @words, @nums );
	foreach my $word ( split( /,/, $line ) ) {
		$word =~ m/^[\d]+$/ ? push( @nums, $word ) : push( @words, $word );
	}
	my $n = join( ',', @nums );
	my $w = join( ',', @words );
	print $w;
	print '|' if $n && $w;
	print $n, "\n";
}
exit(0);

__DATA__
8,33,21,0,16,50,37,0,melon,7,apricot,peach,pineapple,17,21
24,13,14,43,41
