<!---
 *  @file         NHI1/theATL/ChangeLog.md
 *  @brief        ChangeLog.md - unknown - unknown
 *  @copyright    (C) NHI - #1 - Project - Group
 *                This software has NO permission to copy,
 *                please contact AUTHOR for additional information
 *  @version      unknown
 *  @date         unknown
 *  @author       unknown
-->

changelog {#theATL_changelog}
=========

commit 2cb7bfa5dd79a1dca4f5b8d15b9cc390bc4b1c5f
Author: aotto1968 <aotto1968@t-online.de>
Date:   Thu Apr 24 19:20:30 2025 +0200

    The porting tcl8.6.12 commands to atl8.5.20
    
    The porting of the first tcl8.6.12 commands to atl8.5.20 has been successfully completed.
    The following commands have been ported: try/catch/finally, throw, lsearch, lsort, lassign...
    
    atl8.5.20 inherits the "tests" directory from tcl8.6.12, ensuring that all "possible" tcl8.6.12 commands
    run identically under atl8.5.20. The goal is maximum compatibility with an estimated 20% speed advantage
    by eliminating the "dead end" of NRE and TCLOO.

commit 58ff9554312a5941a7f7c07478c3a195b3244249
Author: aotto1968 <aotto1968@t-online.de>
Date:   Wed Apr 23 14:02:41 2025 +0200

    #4 Change the BUILD system to the standard of Tcl8.6 and general adaptation to GitHub.

commit 1cdfaaa5c241a0d2945a718b8884d16a8e5025c2
Author: aotto1968 <aotto1968@t-online.de>
Date:   Wed Apr 23 13:26:18 2025 +0200

    #3 Change the BUILD system to the standard of Tcl8.6 and general adaptation to GitHub.

commit 206d17e00c6492468c4d3a00593975d3ef245c4c
Author: aotto1968 <aotto1968@t-online.de>
Date:   Wed Apr 23 13:23:45 2025 +0200

    #2 Change the BUILD system to the standard of Tcl8.6 and general adaptation to GitHub.

commit 641e581745c29c8c1936b2f5b4b730fccd52c96d
Author: aotto1968 <aotto1968@t-online.de>
Date:   Wed Apr 23 13:17:02 2025 +0200

    Change the BUILD system to the standard of Tcl8.6 and general adaptation to GitHub.

commit dab2062b1ae4798415131eec5f47ab719e955422
Author: aotto1968 <aotto1968@t-online.de>
Date:   Wed Apr 23 08:13:17 2025 +0200

    initial commit
