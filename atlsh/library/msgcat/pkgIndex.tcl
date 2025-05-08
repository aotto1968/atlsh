if {![package vsatisfies [package provide Tcl] 1.0-]} {return}
package ifneeded msgcat 1.6.1 [list source [file join $dir msgcat.tcl]]
