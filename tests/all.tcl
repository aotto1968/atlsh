#+
#:   @file         NHI1/theATL/tests/all.tcl
#:   @brief        tag: nhi1-release-250425
#:   @copyright    (C) NHI - #1 - Project - Group
#:                 This software has NO permission to copy,
#:                 please contact AUTHOR for additional information
#:

package require Tcl 8.5
package require tcltest 2.3

namespace import tcltest::*

# the directory where "all.tcl" is located is also used as "-testdir"
configure {*}$argv -testdir [file dir [info script]]

# Some tests simply do not work in parallel mode, disable them with "!parallel".
configure -constraints parallel

# extra feature to exit with 1 on failed test
runAllTop
