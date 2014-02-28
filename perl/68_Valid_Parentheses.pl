#!/usr/bin/env perl

=head1 DESCRIPTION

Given a string comprising just of the characters (,),{,},[,] determine if it is
well-formed or not.

=cut

use strict;
use warnings;

my %p = (
	'(' => ')',
	'{' => '}',
	'[' => ']',
);

LINE: while ( my $line = <DATA> ) {
	chomp $line;
	my @stack;
	foreach my $c ( split /\s*/, $line ) {
		if ( $p{$c} ) {
			push @stack, $c;
		}
		else {
			my $last = pop @stack;
			if ( $c ne $p{$last} ) {
				print "False\n";
				next LINE;
			}
		}
	}
	print scalar @stack == 0 ? 'True' : 'False', "\n";
}
exit(0);

__DATA__
{
()
([)]
