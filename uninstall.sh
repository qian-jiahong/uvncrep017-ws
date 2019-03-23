#!/bin/bash
type update-rc.d
if test $? -gt 0 ; then 
		echo update-rc.d is not available, perhaps CentOS... 
		echo trying chkconfig 
		type chkconfig 
		if test $? -gt 0 ; then
				exit 1 
			else 
				chkconfig --del uvncrepeater
			fi 
	else 
		update-rc.d -f uvncrepeater remove
	fi
rm /usr/sbin/uvncrepeatersvc
rm /etc/init.d/uvncrepeater
echo -----------------------------------------------------------
echo Do not forget:
echo a. to remove the user for this service
echo    i.e. userdel uvncrep


