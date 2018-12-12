#ifndef __RESOURCE_gui_gtk_H__
#define __RESOURCE_gui_gtk_H__

#include <gio/gio.h>

extern GResource *gui_gtk_get_resource (void);

extern void gui_gtk_register_resource (void);
extern void gui_gtk_unregister_resource (void);

#endif
