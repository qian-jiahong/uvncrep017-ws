#!/bin/bash
if test -d /etc/uvnc ; then 
		echo /etc/uvnc directory already exists. 
        else 
                mkdir /etc/uvnc 
        fi
if [ -f /etc/uvnc/uvncrepeater.ini ]; then 
                echo uvncrepeater.ini already exists - will not overwrite! 
        else 
                cp uvncrepeater.ini /etc/uvnc 
        fi
cp repeater /usr/sbin/uvncrepeatersvc
cp uvncrepeater /etc/init.d/uvncrepeater
chmod a+x /etc/init.d/uvncrepeater
type update-rc.d
if test $? -gt 0 ; then 
		echo update-rc.d is not available, perhaps CentOS... 
		echo trying chkconfig 
		type chkconfig 
		if test $? -gt 0 ; then
				exit 1 
			else 
				chkconfig --add uvncrepeater 
			fi 
	else 
		update-rc.d uvncrepeater defaults 91 
	fi
echo -----------------------------------------------------------
echo Do not forget:
echo a. to create a user for this service
echo    i.e. useradd uvncrep
echo b. change the /etc/uvnc/uvncrepeater.ini file accordingly.


