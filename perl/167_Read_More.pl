#!/usr/bin/env perl

=head1 DESCRIPTION

You are given a text. Write a program which outputs its lines according to the
following rules:

 * If line length is ≤ 55 characters, print it without any changes.
 * If the line length is > 55 characters, change it as follows:
 ** Trim the line to 40 characters.
 ** If there are spaces ‘ ’ in the resulting string, trim it once again to the last space (the space should be trimmed too).
 ** Add a string ‘... <Read More>’ to the end of the resulting string and print it.

=cut

use strict;
use warnings;

while ( my $line = <DATA> ) {
	chomp $line;
	if ( length $line > 55 ) {
		$line = substr( $line, 0, 40 );
		$line =~ s/^(.+)\s\S*/$1/;
		$line .= '... <Read More>';
	}
	print "$line\n";
}
exit(0);

__DATA__
Tom exhibited.
Amy Lawrence was proud and glad, and she tried to make Tom see it in her face - but he wouldn't look.
Tom was tugging at a button-hole and looking sheepish.
Two thousand verses is a great many - very, very great many.
Tom's mouth watered for the apple, but he stuck to his work.
