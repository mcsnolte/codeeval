#!/usr/bin/env perl

=head1 DESCRIPTION

You have JSON string which describes a menu. Calculate the SUM of IDs of all
"items" in the case a "label" exists for an item.

=cut

use strict;
use warnings;

while (<DATA>) {
	my $sum = 0;
	while (m/"id": (\d+), "label"/g) {
		$sum += int($1);
	}
	print $sum, "\n";
}
exit(0);

__DATA__
{"menu": {"header": "menu", "items": [{"id": 27}, {"id": 0, "label": "Label 0"}, null, {"id": 93}, {"id": 85}, {"id": 54}, null, {"id": 46, "label": "Label 46"}]}}
{"menu": {"header": "menu", "items": [{"id": 81}]}}
{"menu": {"header": "menu", "items": [{"id": 70, "label": "Label 70"}, {"id": 85, "label": "Label 85"}, {"id": 93, "label": "Label 93"}, {"id": 2}]}}
