/* pathdef.c */
/* This file is automatically created by Makefile
 * DO NOT EDIT!  Change Makefile only. */
#include "vim.h"
char_u *default_vim_dir = (char_u *)"/usr/share/vim";
char_u *default_vimruntime_dir = (char_u *)"";
char_u *all_cflags = (char_u *)"icc -c -I. -Iproto -DHAVE_CONFIG_H   -Wdate-time  -g -O2 -fdebug-prefix-map=/home/richard/debs/vim/vim=. -fstack-protector-strong -Wformat -Werror=format-security -march=native -pipe       ";
char_u *all_lflags = (char_u *)"icc   -Wl,-z,relro -Wl,-z,now,--gc-sections,--print-gc-sections,--print-memory-usage,--relax,--stats -Wl,--as-needed -o vim        -lm -ltinfo -lnsl  -lselinux -lacl -lattr -lgpm           ";
char_u *compiled_user = (char_u *)"team+vim@tracker.debian.org";
char_u *compiled_sys = (char_u *)"";
