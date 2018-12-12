#
# config.mk.in -- autoconf template for Vim on Unix		vim:ts=8:sw=8:
#
# DO NOT EDIT config.mk!!  It will be overwritten by configure.
# Edit Makefile and run "make" or run ./configure with other arguments.
#
# Configure does not edit the makefile directly. This method is not the
# standard use of GNU autoconf, but it has two advantages:
#   a) The user can override every choice made by configure.
#   b) Modifications to the makefile are not lost when configure is run.
#
# I hope this is worth being nonstandard. jw.



VIMNAME		= vim
EXNAME		= ex
VIEWNAME	= view

CC		= icc
DEFS		= -DHAVE_CONFIG_H
CFLAGS		= -g -O2 -fdebug-prefix-map=/home/richard/debs/vim/vim=. -fstack-protector-strong -Wformat -Werror=format-security -march=native -pipe
CPPFLAGS	= -Wdate-time
srcdir		= .

LDFLAGS		= -L. -Wl,-z,relro -Wl,-z,now -fstack-protector -rdynamic -Wl,-export-dynamic -Wl,-E  -Wl,-z,relro -Wl,-z,now,--gc-sections,--print-gc-sections,--print-memory-usage,--relax,--stats -Wl,--as-needed
LIBS		= -lm -ltinfo -lnsl  -lselinux  -lacl -lattr -lgpm
TAGPRG		= ctags

CPP		= icc -E
CPP_MM		= M
DEPEND_CFLAGS_FILTER = 
LINK_AS_NEEDED	= yes
X_CFLAGS	=  
X_LIBS_DIR	=  
X_PRE_LIBS	=  -lSM -lICE -lXpm
X_EXTRA_LIBS	=  -lXdmcp -lSM -lICE
X_LIBS		= -lXt -lX11

LUA_LIBS	= -L/usr/lib -llua5.2
LUA_SRC		= if_lua.c
LUA_OBJ		= objects/if_lua.o
LUA_CFLAGS	= -I/usr/include/lua5.2
LUA_PRO		= if_lua.pro

MZSCHEME_LIBS	= 
MZSCHEME_SRC	= 
MZSCHEME_OBJ	= 
MZSCHEME_CFLAGS	= 
MZSCHEME_PRO	= 
MZSCHEME_EXTRA	= 
MZSCHEME_MZC	= 

PERL		= /usr/bin/perl
PERLLIB		= /usr/share/perl/5.28
PERL_XSUBPP	= /usr/share/perl/5.28/ExtUtils/xsubpp
PERL_LIBS	= -Wl,-E  -fstack-protector-strong -L/usr/local/lib  -L/usr/lib/x86_64-linux-gnu/perl/5.28/CORE -lperl -ldl -lm -lpthread -lcrypt
SHRPENV		= 
PERL_SRC	= auto/if_perl.c if_perlsfio.c
PERL_OBJ	= objects/if_perl.o objects/if_perlsfio.o
PERL_PRO	= if_perl.pro if_perlsfio.pro
PERL_CFLAGS	=  -D_REENTRANT -D_GNU_SOURCE -DDEBIAN -fwrapv  -I/usr/local/include -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64  -I/usr/lib/x86_64-linux-gnu/perl/5.28/CORE 

PYTHON_SRC	= 
PYTHON_OBJ	= 
PYTHON_CFLAGS	= 
PYTHON_LIBS	= 

PYTHON3_SRC	= if_python3.c
PYTHON3_OBJ	= objects/if_python3.o
PYTHON3_CFLAGS	= -I/usr/include/python3.6m -pthread -fPIE
PYTHON3_LIBS	= -L/usr/lib/python3.6/config-3.6m-x86_64-linux-gnu -lpython3.6m -lpthread -ldl -lutil -lm

TCL		= /usr/bin/tclsh
TCL_SRC		= if_tcl.c
TCL_OBJ		= objects/if_tcl.o
TCL_PRO		= if_tcl.pro
TCL_CFLAGS	= -I/usr/include/tcl8.6  -D_REENTRANT=1  -D_THREAD_SAFE=1  -D_LARGEFILE64_SOURCE=1 
TCL_LIBS	= -L/usr/lib/x86_64-linux-gnu -ltcl8.6 -ldl -lz -lpthread -lm

HANGULIN_SRC	= 
HANGULIN_OBJ	= 

WORKSHOP_SRC	= 
WORKSHOP_OBJ	= 

NETBEANS_SRC	= netbeans.c
NETBEANS_OBJ	= objects/netbeans.o
CHANNEL_SRC	= channel.c
CHANNEL_OBJ	= objects/channel.o
TERM_SRC	= libvterm/src/encoding.c libvterm/src/keyboard.c libvterm/src/mouse.c libvterm/src/parser.c libvterm/src/pen.c libvterm/src/termscreen.c libvterm/src/state.c libvterm/src/unicode.c libvterm/src/vterm.c
TERM_OBJ	= objects/encoding.o objects/keyboard.o objects/mouse.o objects/parser.o objects/pen.o objects/termscreen.o objects/state.o objects/unicode.o objects/vterm.o

RUBY		= /usr/bin/ruby
RUBY_SRC	= if_ruby.c
RUBY_OBJ	= objects/if_ruby.o
RUBY_PRO	= if_ruby.pro
RUBY_CFLAGS	= -I/usr/include/ruby-2.5.0 -I/usr/include/x86_64-linux-gnu/ruby-2.5.0 -DRUBY_VERSION=25
RUBY_LIBS	= -lruby-2.5 -lpthread -lgmp -ldl -lcrypt -lm 

AWK		= mawk

STRIP		= strip

EXEEXT		= 
CROSS_COMPILING = 

COMPILEDBY	= team+vim@tracker.debian.org

INSTALLVIMDIFF	= installvimdiff
INSTALLGVIMDIFF	= installgvimdiff
INSTALL_LANGS	= install-languages
INSTALL_TOOL_LANGS	= install-tool-languages

### sed command to fix quotes while creating pathdef.c
QUOTESED        = sed -e 's/[\\"]/\\&/g' -e 's/\\"/"/' -e 's/\\";$$/";/'

### Line break character as octal number for "tr"
NL		= "\\012"

### Top directory for everything
prefix		= /usr

### Top directory for the binary
exec_prefix	= ${prefix}

### Prefix for location of data files
BINDIR		= ${exec_prefix}/bin

### For autoconf 2.60 and later (avoid a warning)
datarootdir	= ${prefix}/share

### Prefix for location of data files
DATADIR		= ${datarootdir}

### Prefix for location of man pages
MANDIR		= ${prefix}/share/man

### Do we have a GUI
GUI_INC_LOC	= -pthread -I/usr/include/gtk-2.0 -I/usr/lib/x86_64-linux-gnu/gtk-2.0/include -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/pango-1.0 -I/usr/include/harfbuzz -I/usr/include/pango-1.0 -I/usr/include/fribidi -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/uuid -I/usr/include/freetype2 -I/usr/include/libpng16
GUI_LIB_LOC	= 
GUI_SRC		= $(GTK_SRC)
GUI_OBJ		= $(GTK_OBJ)
GUI_DEFS	= $(GTK_DEFS)
GUI_IPATH	= $(GTK_IPATH)
GUI_LIBS_DIR	= $(GTK_LIBS_DIR)
GUI_LIBS1	= $(GTK_LIBS1)
GUI_LIBS2	= $(GTK_LIBS2)
GUI_INSTALL	= $(GTK_INSTALL)
GUI_TARGETS	= $(GTK_TARGETS)
GUI_MAN_TARGETS	= $(GTK_MAN_TARGETS)
GUI_TESTTARGET	= $(GTK_TESTTARGET)
GUI_TESTARG	= $(GTK_TESTARG)
GUI_BUNDLE	= $(GTK_BUNDLE)
NARROW_PROTO	= 
GUI_X_LIBS	= 
MOTIF_LIBNAME	= 
GTK_LIBNAME	= -lgtk-x11-2.0 -lgdk-x11-2.0 -lpangocairo-1.0 -latk-1.0 -lcairo -lgdk_pixbuf-2.0 -lgio-2.0 -lpangoft2-1.0 -lpango-1.0 -lgobject-2.0 -lglib-2.0 -lfontconfig -lfreetype

GLIB_COMPILE_RESOURCES = /usr/bin/glib-compile-resources
GRESOURCE_SRC = auto/gui_gtk_gresources.c
GRESOURCE_OBJ = objects/gui_gtk_gresources.o

GTK_UPDATE_ICON_CACHE = /usr/bin/gtk-update-icon-cache
UPDATE_DESKTOP_DATABASE = no

### Any OS dependent extra source and object file
OS_EXTRA_SRC	= 
OS_EXTRA_OBJ	= 

### If the *.po files are to be translated to *.mo files.
MAKEMO		= yes

MSGFMT		= msgfmt

# Make sure that "make first" will run "make all" once configure has done its
# work.  This is needed when using the Makefile in the top directory.
first: all
