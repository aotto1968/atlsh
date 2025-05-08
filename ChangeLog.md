<!---
 *  @file         NHI1/theATL/ChangeLog.md
 *  @brief        tag: nhi1-release-250425
 *  @copyright    (C) NHI - #1 - Project - Group
 *                This software has NO permission to copy,
 *                please contact AUTHOR for additional information
-->

changelog {#theATL_changelog}
=========

@brief ChangeLog from the @e git repository

commit 2cb7bfa5dd79a1dca4f5b8d15b9cc390bc4b1c5f
Date:   Thu Apr 24 19:20:30 2025 +0200

    The porting tcl8.6.12 commands to atl1.0.2
    
    The porting of the first tcl8.6.12 commands to atl1.0.2 has been successfully completed.
    The following commands have been ported: try/catch/finally, throw, lsearch, lsort, lassign...
    
    atl1.0.2 inherits the "tests" directory from tcl8.6.12, ensuring that all "possible" tcl8.6.12 commands
    run identically under atl1.0.2. The goal is maximum compatibility with an estimated 20% speed advantage
    by eliminating the "dead end" of NRE and TCLOO.

commit dab2062b1ae4798415131eec5f47ab719e955422
Date:   Wed Apr 23 08:13:17 2025 +0200

    initial commit
