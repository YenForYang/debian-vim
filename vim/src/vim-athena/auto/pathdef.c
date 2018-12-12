/* pathdef.c */
/* This file is automatically created by Makefile
 * DO NOT EDIT!  Change Makefile only. */
#include "vim.h"
char_u *default_vim_dir = (char_u *)"/usr/share/vim";
char_u *default_vimruntime_dir = (char_u *)"";
char_u *all_cflags = (char_u *)"icc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_ATHENA   -Wdate-time  -g -O2 -fdebug-prefix-map=/home/richard/debs/vim/vim=. -fstack-protector-strong -Wformat -Werror=format-security -march=native -pipe       ";
char_u *all_lflags = (char_u *)"icc   -L. -Wl,-z,relro -Wl,-z,now -fstack-protector -rdynamic -Wl,-export-dynamic -Wl,-E  -Wl,-z,relro -Wl,-z,now,--gc-sections,--print-gc-sections,--print-memory-usage,--relax,--stats -Wl,--as-needed -o vim -lXaw -lXmu -lXext -lXt -lSM -lICE -lXpm -lXt -lX11 -lXdmcp -lSM -lICE -ldl  -lm -ltinfo -lnsl  -lselinux  -lacl -lattr -lgpm  -L/usr/lib -llua5.2 -Wl,-E  -fstack-protector-strong -L/usr/local/lib  -L/usr/lib/x86_64-linux-gnu/perl/5.28/CORE -lperl -ldl -lm -lpthread -lcrypt  -L/usr/lib/python3.6/config-3.6m-x86_64-linux-gnu -lpython3.6m -lpthread -ldl -lutil -lm -L/usr/lib/x86_64-linux-gnu -ltcl8.6 -ldl -lz -lpthread -lm -lruby-2.5 -lpthread -lgmp -ldl -lcrypt -lm     ";
char_u *compiled_user = (char_u *)"team+vim@tracker.debian.org";
char_u *compiled_sys = (char_u *)"";
