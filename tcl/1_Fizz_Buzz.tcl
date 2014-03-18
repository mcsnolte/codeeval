#!/usr/bin/tclsh

set file [open [lindex $argv 0] r]
set input [read $file]
close $file

set lines [split $input "\n"]
foreach line $lines {
	set parts [split $line " "]
	set answer [list]
	for {set i 1} {$i <= [lindex $parts 2]} {incr i} {
		if {$i % [lindex $parts 0] == 0 && $i % [lindex $parts 1] == 0} {
			lappend answer {FB}
		} elseif {$i % [lindex $parts 0] == 0} {
			lappend answer {F}
		} elseif {$i % [lindex $parts 1] == 0} {
			lappend answer {B}
		} else {
			lappend answer $i
		}
	}
	set output [join $answer " "]
	puts $output
}

