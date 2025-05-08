#!/bin/bash
#+
#:   @file         NHI1/theATL/tests/.make_link.bash
#:   @brief        tag: nhi1-release-250425
#:   @copyright    (C) NHI - #1 - Project - Group
#:                 This software has NO permission to copy,
#:                 please contact AUTHOR for additional information
#:

# mirrors the "*.test" files from the directory "../atlsh/tests" to the local directory

find . -type l -delete

ln -s ../atlsh/tests/*.test .
ln -s ../atlsh/tests/internals.tcl .
ln -s ../atlsh/tests/remote.tcl .
ln -s ../atlsh/tests/auto0 .
