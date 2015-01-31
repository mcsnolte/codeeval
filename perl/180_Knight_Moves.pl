#!/usr/bin/env perl

=head1 DESCRIPTION

In chess, the knight moves to any of the closest squares that are not on the
same rank, file, or diagonal. Thus the move is in the “L” form: two squares
vertically and one square horizontally, or two squares horizontally and one
square vertically:

Your task is to find all possible positions for the next move of the knight on
the empty chessboard.

=cut

use strict;
use warnings;

while ( my $line = <DATA> ) {
    chomp $line;
    my ( $x, $y ) = split( //, $line );

    $x = ord($x) - 96;

    my @moves;

    # North
    if ( $y + 2 <= 8 ) {

        # NW
        if ( $x - 1 >= 1 ) {
            push @moves, chr( $x - 1 + 96 ) . ( $y + 2 );
        }

        # NE
        if ( $x + 1 <= 8 ) {
            push @moves, chr( $x + 1 + 96 ) . ( $y + 2 );
        }
    }

    # East
    if ( $x + 2 <= 8 ) {

        # NE
        if ( $y + 1 <= 8 ) {
            push @moves, chr( $x + 2 + 96 ) . ( $y + 1 );
        }

        # SE
        if ( $y - 1 >= 1 ) {
            push @moves, chr( $x + 2 + 96 ) . ( $y - 1 );
        }
    }

    # South
    if ( $y - 2 >= 1 ) {

        # SW
        if ( $x - 1 >= 1 ) {
            push @moves, chr( $x - 1 + 96 ) . ( $y - 2 );
        }

        # SE
        if ( $x + 1 <= 8 ) {
            push @moves, chr( $x + 1 + 96 ) . ( $y - 2 );
        }
    }

    # West
    if ( $x - 2 >= 1 ) {

        # NW
        if ( $y + 1 <= 8 ) {
            push @moves, chr( $x - 2 + 96 ) . ( $y + 1 );
        }

        # SW
        if ( $y - 1 >= 1 ) {
            push @moves, chr( $x - 2 + 96 ) . ( $y - 1 );
        }
    }

    print join( ' ', sort @moves ), "\n";
}

exit(0);

__DATA__
g2
a1
d6
e5
b1
