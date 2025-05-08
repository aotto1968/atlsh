<!---
 *  @file         NHI1/theATL/tests/README_TESTS.md
 *  @brief        tag: nhi1-release-250425
 *  @copyright    (C) NHI - #1 - Project - Group
 *                This software has NO permission to copy,
 *                please contact AUTHOR for additional information
-->

README_TESTS	{#README_TESTS}
============

\brief README from 'theATL/tests' directory.


The scripts used in the source directory are used to test the “atlsh” tool with 
the test cases from “../atlsh/tests” .

make usage
----------

command   |     definition
--------- | ----------------------------------------------
help      |     this message
log       |     show the test-results (only on error)
test      |     run single test-case
link      |     link `*.test` files from `../atlsh/tests` into `.`

make check
----------

used to execute all tests in **parallel** to get **fast** test-results.
*parallel-testing* is a feature auf the *automake* build tool.
*Nhi1Make* execute NUMCPU-2 parallel test-cases by default.

- using the parallel test feature of the automake build environment :

      make check 

- add additional options to parallel tests

      make check TEST_LOG_FLAGS="..."

- only test a specific test case :

      make test TESTS=pkgMkIndex.test
      ( output to the terminal using '-verbose bpt' as default )

- same as above but using the "check" target

      make check TESTS=pkgMkIndex.test
      ( output is collected under 'pkgMkIndex.log' in the build directory )

- add additional options to a specific test case

      make test TESTS=pkgMkIndex.test TEST_LOG_FLAGS="..."

- direct access "atltest" - only show result on error
      ../bin/atltest pkgMkIndex.test -verbose e

- check with pattern
      make test TESTS='i*.test' TEST_LOG_FLAGS='-verbose pt'

## CONFIGURABLE OPTIONS

> man n atltest

The configure command is used to set and query the configurable options of atltest.  The valid options are:

###  -singleproc boolean

Controls whether or not runAllTests spawns a child process for each test file.  No spawning when boolean is true.  Default value is false.

###  -debug level

Sets the debug level to level, an integer value indicating how much debugging information should be printed to stdout.  Note that debug messages always go to stdout, independent of the value of configure -outfile.  
Default value  is 0.  Levels are defined as:

    0   Do not display any debug information.

    1   Display  information  regarding  whether a test is skipped because it does not match any of the tests that were specified using by configure -match (userSpecifiedNonMatch) or matches any of the tests specified by configure -skip
        (userSpecifiedSkip).  Also print warnings about possible lack of cleanup or balance in test files.  Also print warnings about any re-use of test names.

    2   Display the flag array parsed by the command line processor, the contents of the global env array, and all user-defined variables that exist in the current namespace as they are used.

    3   Display information regarding what individual procs in the test harness are doing.

###  -verbose level

Sets the type of output verbosity desired to level, a list of zero or more of the elements body, pass, skip, start, error, line, msec and usec.  Default value is “body error”.  Levels are defined as:

    body  (b) Display the body of failed tests
    pass  (p) Print output when a test passes
    skip  (s) Print output when a test is skipped
    start (t) Print output whenever a test starts
    error (e) Print errorInfo and errorCode, if they exist, when a test return code does not match its expected return code
    line  (l) Print source file line information of failed tests
    msec  (m) Print each test's execution time in milliseconds
    usec  (u) Print each test's execution time in microseconds

Note that the msec and usec verbosity levels are provided as indicative measures only. They do not tackle the problem of repeatibility which should be considered in performance tests or benchmarks. To use these verbosity  levels  to
thoroughly track performance degradations, consider wrapping your test bodies with time commands.

The single letter abbreviations noted above are also recognized so that “configure -verbose pt” is the same as “configure -verbose {pass start}”.

###  -preservecore level

Sets the core preservation level to level.  This level determines how stringent checks for core files are.  Default value is 0.  Levels are defined as:

    0   No checking — do not check for core files at the end of each test command, but do check for them in runAllTests after all test files have been evaluated.

    1   Also check for core files at the end of each test command.

    2   Check for core files at all times described above, and save a copy of each core file produced in configure -tmpdir.

###  -limitconstraints boolean

Sets the mode by which test honors constraints as described in TESTS above.  Default value is false.

###  -constraints list

Sets all the constraints in list to true.  Also used in combination with configure -limitconstraints true to control an alternative constraint mode as described in TESTS above.  Default value is an empty list.

###  -tmpdir directory

Sets  the temporary directory to be used by makeFile, makeDirectory, viewFile, removeFile, and removeDirectory as the default directory where temporary files and directories created by test files should be created.  Default value is
workingDirectory.

###  -testdir directory

Sets the directory searched by runAllTests for test files and subdirectories.  Default value is workingDirectory.

###  -file patternList

Sets the list of patterns used by runAllTests to determine what test files to evaluate.  Default value is “\*.test”.

###  -notfile patternList

Sets the list of patterns used by runAllTests to determine what test files to skip.  Default value is “l.\*.test”, so that any SCCS lock files are skipped.

###  -relateddir patternList

Sets the list of patterns used by runAllTests to determine what subdirectories to search for an all.tcl file.  Default value is “\*”.

###  -asidefromdir patternList

Sets the list of patterns used by runAllTests to determine what subdirectories to skip when searching for an all.tcl file.  Default value is an empty list.

###  -match patternList

Set the list of patterns used by test to determine whether a test should be run.  Default value is “\*”.

###  -skip patternList

Set the list of patterns used by test to determine whether a test should be skipped.  Default value is an empty list.

###  -load script

Sets a script to be evaluated by loadTestedCommands.  Default value is an empty script.

###  -loadfile filename

Sets the filename from which to read a script to be evaluated by loadTestedCommands.  This is an alternative to -load.  They cannot be used together.

###  -outfile filename

Sets the file to which all output produced by atltest should be written.  A file named filename will be opened for writing, and the resulting channel will be set as the value of outputChannel.

###  -errfile filename

Sets the file to which all error output produced by atltest should be written.  A file named filename will be opened for writing, and the resulting channel will be set as the value of errorChannel.

