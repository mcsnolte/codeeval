#!/usr/bin/env perl

=head1 DESCRIPTION

Long serious texts are boring. Write a program that will make texts more
informal: replace every other end punctuation mark (period ‘.’, exclamation
mark ‘!’, or question mark ‘?’) with one of the following slang
phrases, selecting them one after another:

 ‘, yeah!’
 ‘, this is crazy, I tell ya.’
 ‘, can U believe this?’
 ‘, eh?’
 ‘, aw yea.’
 ‘, yo.’
 ‘? No way!’
 ‘. Awesome!’

The result should be funny.

=cut

use strict;
use warnings;

my @slang = (
	', yeah!',
	', this is crazy, I tell ya.',
	', can U believe this?',
	', eh?',
	', aw yea.',
	', yo.',
	'? No way!',
	'. Awesome!'

);

$/ = undef;
my $text = <DATA>;
my $i    = 0;
$text =~ s/(.+?[.!?].+?)[.!?]/$1$slang[iter()]/sgx;

sub iter {
	$i = 0 if $i >= scalar @slang;
	return $i++;
}

print $text;

exit(0);

__DATA__
Lorem ipsum dolor sit amet. Mea et habeo doming praesent. Te inani utroque recteque has, sea ne fugit verterem!
Usu ei scripta phaedrum, an sed salutatus definiebas? Qui ut recteque gloriatur reformidans. Qui solum aeque sapientem cu.
Eu nam nusquam quaestio principes.
Lorem ipsum dolor sit amet. Mea et habeo doming praesent. Te inani utroque recteque has, sea ne fugit verterem!
Usu ei scripta phaedrum, an sed salutatus definiebas? Qui ut recteque gloriatur reformidans. Qui solum aeque sapientem cu.
Eu nam nusquam quaestio principes.
Lorem ipsum dolor sit amet. Mea et habeo doming praesent. Te inani utroque recteque has, sea ne fugit verterem!
Usu ei scripta phaedrum, an sed salutatus definiebas? Qui ut recteque gloriatur reformidans. Qui solum aeque sapientem cu.
Eu nam nusquam quaestio principes.
Lorem ipsum dolor sit amet. Mea et habeo doming praesent. Te inani utroque recteque has, sea ne fugit verterem!
Usu ei scripta phaedrum, an sed salutatus definiebas? Qui ut recteque gloriatur reformidans. Qui solum aeque sapientem cu.
Eu nam nusquam quaestio principes.
Lorem ipsum dolor sit amet. Mea et habeo doming praesent. Te inani utroque recteque has, sea ne fugit verterem!
Usu ei scripta phaedrum, an sed salutatus definiebas? Qui ut recteque gloriatur reformidans. Qui solum aeque sapientem cu.
Eu nam nusquam quaestio principes.
Lorem ipsum dolor sit amet. Mea et habeo doming praesent. Te inani utroque recteque has, sea ne fugit verterem!
Usu ei scripta phaedrum, an sed salutatus definiebas? Qui ut recteque gloriatur reformidans. Qui solum aeque sapientem cu.
Eu nam nusquam quaestio principes.
Lorem ipsum dolor sit amet. Mea et habeo doming praesent. Te inani utroque recteque has, sea ne fugit verterem!
Usu ei scripta phaedrum, an sed salutatus definiebas? Qui ut recteque gloriatur reformidans. Qui solum aeque sapientem cu.
Eu nam nusquam quaestio principes.
