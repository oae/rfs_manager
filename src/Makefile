# Makefile
# rfs-manager
#

# program name
PROGRAM = rfsmanager

# source files
SRC = \
	core/main.vala \
	core/rfsmanagerglobals.vala \
	core/rfsmanagerwindow.vala

# dependencies
PKGS = --pkg gtk+-3.0 --pkg gmodule-2.0

# compiler
VALAC = valac

# compiler options for a debug build
VALACOPTS = -g --save-temps

# make
all:
	@$(VALAC) -X -O2 $(SRC) -o $(PROGRAM) $(PKGS)

# make install
install:
		@mkdir -p /usr/local/bin/
		@mkdir -p /usr/local/share/$(PROGRAM)/
		@find . -name "*.ui" -exec cp "{}" /usr/local/share/$(PROGRAM)/ \;
		@cp $(PROGRAM) /usr/local/bin/


# make clean
clean:
		@find . -name "*.c" -exec rm -v -f "{}" \;
		@rm -v -rf *~ $(PROGRAM)
		@rm -v -rf /usr/local/bin/$(PROGRAM)
		@rm -v -rf /usr/local/share/$(PROGRAM)/
