#!/usr/bin/env perl

=head1 DESCRIPTION

The goal of this challenge is to design a cash register program. You will be
given two float numbers. The first is the purchase price (PP) of the item. The
second is the cash (CH) given by the customer. Your register currently has the
following bills/coins within it:

	'PENNY': .01,
	'NICKEL': .05,
	'DIME': .10,
	'QUARTER': .25,
	'HALF DOLLAR': .50,
	'ONE': 1.00,
	'TWO': 2.00,
	'FIVE': 5.00,
	'TEN': 10.00,
	'TWENTY': 20.00,
	'FIFTY': 50.00,
	'ONE HUNDRED': 100.00

The aim of the program is to calculate the change that has to be returned to
the customer.

=cut

use strict;
use warnings;

my %money = (
	1     => "PENNY",
	5     => "NICKEL",
	10    => "DIME",
	25    => "QUARTER",
	50    => "HALF DOLLAR",
	100   => "ONE",
	200   => "TWO",
	500   => "FIVE",
	1000  => "TEN",
	2000  => "TWENTY",
	5000  => "FIFTY",
	10000 => "ONE HUNDRED",
);
my @amounts = sort { $b <=> $a } keys %money;

while (<DATA>) {
	chomp;
	my ( $pp, $ch ) = map { int( $_ * 100 ) } split /;/;
	if ( $pp > $ch ) {
		print "ERROR\n";
	}
	elsif ( $pp == $ch ) {
		print "ZERO\n";
	}
	else {
		my $c = $ch - $pp;
		my @change;
		while ($c) {
			foreach my $u (@amounts) {
				while ( $u <= $c ) {
					push @change, $money{$u};
					$c -= $u;
				}
			}
		}
		print join( ',', @change ), "\n";
	}
}
exit(0);

__DATA__
15.94;16.00
17;16
35;35
45;50
