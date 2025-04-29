#+
#:   @file         NHI1/theATL/tests/Makefile.am
#:   @brief        tag: nhi1-release-250425
#:   @copyright    (C) NHI - #1 - Project - Group
#:                 This software has NO permission to copy,
#:                 please contact AUTHOR for additional information
#:

EXTRA_DIST = README_TESTS.md $(srcdir)/*.tcl $(srcdir)/*.test $(srcdir)/httpd

# set "TEST_FILES" created by ".makefile_index.bash"
include .index.mk

TESTS = $(TEST_FILES)

debug:
	@echo TESTS=$(TESTS)

# README_TESTS.md
help:
	less $(srcdir)/README_TESTS.md

log:
	test -f $(builddir)/test-suite.log && less -S $(builddir)/test-suite.log || true

test:
	for t in $(TESTS); do \
	  $(srcdir)/../bin/atltest "$(srcdir)/$$t" -verbose bpt $(TEST_LOG_FLAGS); \
	done

TEST_EXTENSIONS = .test
# using: ../bin/atltest
TEST_LOG_COMPILER = $(srcdir)/../bin/atltest

#! Attention: to add your own FLAGS use "TEST_LOG_FLAGS"
#AM_TEST_LOG_FLAGS = -verbose bpt

CLEANFILES = httpd_*

# BEGIN-MAKEFILE-INDEX
index-local:
	cd "$(srcdir)" && bash ./.makefile_index.bash
# END-MAKEFILE-INDEX
