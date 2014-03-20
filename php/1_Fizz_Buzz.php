<?php
$fh = fopen($argv[1], "r");
while (($test = fgets($fh)) !== false) {
	list($f,$b,$x) = explode(" ", $test);
	for ( $i = 1; $i <= $x; $i++ ) {
		if ( $i % $f == 0 && $i % $b == 0 ) {
			echo "FB";
		}
		elseif ( $i % $f == 0 ) {
			echo "F";
		}
		elseif ( $i % $b == 0 ) {
			echo "B";
		}
		else {
			echo $i;
		}
		if ( $i < $x ) {
			echo " ";
		}
	}
	echo "\n";
}
?>

