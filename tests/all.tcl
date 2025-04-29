#+
#:   @file         NHI1/theATL/tests/all.tcl
#:   @brief        tag: nhi1-release-250425
#:   @copyright    (C) NHI - #1 - Project - Group
#:                 This software has NO permission to copy,
#:                 please contact AUTHOR for additional information
#:

package require Tcl 8.5
package require -exact tcltest 2.3.8
namespace import tcltest::*
configure {*}$argv -testdir [file dir [info script]] -constraints parallel

runAllTop
