#!/bin/sh
if [ -x /usr/bin/update-mime-database ]; then
	/usr/bin/update-mime-database /usr/share/mime/ &> /dev/null
fi
