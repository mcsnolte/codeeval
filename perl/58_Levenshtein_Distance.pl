#!/usr/bin/env perl

=head1 DESCRIPTION

Two words are friends if they have a Levenshtein distance of 1 (For details see
Levenshtein distance). That is, you can add, remove, or substitute exactly one
letter in word X to create word Y. A word’s social network consists of all of
its friends, plus all of their friends, and all of their friends’ friends,
and so on. Write a program to tell us how big the social network for the given
word is, using our word list.

=cut

use strict;
use warnings;

my @input;
my %words;
my $is_input = 1;

while ( my $word = <DATA> ) {
	chomp $word;
	if ( $word eq 'END OF INPUT' ) {
		$is_input = 0;
	}
	elsif ($is_input) {
		push @input, $word;
	}
	else {
		$words{$word} = 1;
	}
}

foreach my $word (@input) {
	my $c = {
		input   => $word,
		friends => {},
	};
	test_mods( $c, $word );

	#print join( ', ', keys %{ $c->{friends} } ), "\n";

	# +1 for being your own friend
	print( ( scalar keys %{ $c->{friends} } ) + 1, "\n" );
}
exit(0);

sub test_mods {
	my $c     = shift;
	my $input = shift;

	foreach my $i ( 0 .. length $input ) {
		my $test = $input;
		substr( $test, $i, 1, '' );    # delete char
		test( $c, $test );

		foreach my $char ( 'a' .. 'z' ) {
			$test = $input;
			substr( $test, $i, 0, $char );    # insert char
			test( $c, $test );

			$test = $input;
			substr( $test, $i, 1, $char );    # replace char
			test( $c, $test );
		}
	}

	foreach my $char ( 'a' .. 'z' ) {
		my $test = $input . $char;            # append char
		test( $c, $test );
	}
}

sub test {
	my $c    = shift;
	my $word = shift;
	if ( $word ne $c->{input} && $words{$word} && !$c->{friends}->{$word} ) {

		#print "> $word is a friend!\n";
		$c->{friends}->{$word} = 1;
		test_mods( $c, $word );
	}
	return;
}

__DATA__
dog
cat
END OF INPUT
cat
dog
dig
doge
optimismt
