#!/bin/bash
#+
#:   @file         NHI1/theATL/.MY_GREP_FOR_ALL.bash
#:   @brief        tag: nhi1-release-250425
#:   @copyright    (C) NHI - #1 - Project - Group
#:                 This software has NO permission to copy,
#:                 please contact AUTHOR for additional information
#:

for tok; do
  GREP_FOR_ALL.bash "\\<$tok\\>" || continue
  
  case "$tok" in
    *TCL*)  ntok="${tok/TCL/ATL}"  ;;
    *tcl*)  ntok="${tok/tcl/atls}" ;;
  esac

  GREP_FOR_ALL.bash --extended-regexp --change "$ntok" "\\<$tok\\>"
done
