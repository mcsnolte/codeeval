#!/usr/bin/env perl

=head1 DESCRIPTION

Your friends decided to make fun of you. They have installed a script on your
computer which shuffled all words within a text. It is a joke, so they have
left hints for each sentence. The hints will allow you to rebuild the data
easily, but you need to find out how to use them.

Your task is to write a program which reconstructs each sentence out of a set
of words and prints out the original sentences.

=cut

use strict;
use warnings;

while ( my $line = <DATA> ) {
	chomp $line;
	my ( $w, $h ) = split( /;/, $line );
	my @words = split( /\s/, $w );
	my @hints = split( /\s/, $h );

	my @message;
	my $i = 0;
	my %used = map { $_ => 0 } ( 1 .. scalar @words );
	foreach my $hint (@hints) {
		$used{$hint} = 1;
		$message[ $hint - 1 ] = $words[ $i++ ];
	}

	my ($remaining) = grep { !$used{$_} } keys %used;
	$message[ $remaining - 1 ] = $words[-1];

	print "@message\n";
}
exit(0);

__DATA__
2000 and was not However, implemented 1998 it until;9 8 3 4 1 5 7 2
programming first The language;3 2 1
programs Manchester The written ran Mark 1952 1 in Autocode from;6 2 1 7 5 3 11 4 8 9
