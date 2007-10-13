# Update the X font indexes:
if [ -x usr/X11R6/bin/fc-cache ]; then
  chroot . usr/X11R6/bin/fc-cache -f
fi

if [ -x usr/bin/scrollkeeper-update ]; then
  usr/bin/scrollkeeper-update -p var/lib/scrollkeeper 1> /dev/null 2> /dev/null
fi

if [ -x usr/bin/update-desktop-database ]; then
  usr/bin/update-desktop-database 1> /dev/null 2> /dev/null
fi