#+
#:   @file         NHI1/theATL/tests/all.tcl
#:   @brief        tag: nhi1-release-250425
#:   @copyright    (C) NHI - #1 - Project - Group
#:                 This software has NO permission to copy,
#:                 please contact AUTHOR for additional information
#:

package require Tcl 1
package require atltest 2

namespace import atltest::*

# the directory where "all.tcl" is located is also used as "-testdir"
configure {*}$argv -testdir [file dir [info script]]

# extra feature to exit with 1 on failed test
if {[runAllTests]} {
  exit 1
}
