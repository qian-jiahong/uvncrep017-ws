# UltraVNC Repeater

## How to install UltraVNC Repeater for Linux (Debian & CentOS)

We have created a version based on the repeater014.zip version which is at

http://koti.mbnet.fi/jtko/uvncrepeater/repeater014.zip

So, you can download UltraVNC repeater by giving 

wget http://www.wisdomsoftware.gr/download/uvncrep017-ws.tar.gz

## Get build packages
For Debian use:

apt-get install linux-headers-`uname -r` libx11-6 libx11-dev x-window-system-core x-window-system xspecs libxtst6 psmisc build-essential

For CentOS use:

yum install linux-headers-`uname -r` libx11-6 libx11-dev x-window-system-core x-window-system xspecs libxtst6 psmisc build-essential

## Get source into /usr/local/src

cd /usr/local/src

wget http://www.wisdomsoftware.gr/download/uvncrep017-ws.tar.gz


## Unzip source file
gunzip uvncrep017-ws.tar.gz
tar -xvf uvncrep017-ws.tar

## Install startup script
cd uvncrep017-ws
make; make install;

## Add a user for the service
useradd uvncrep

## Edit /etc/uvnc/uvncrepeater.ini according to your needs.
## Check the following parameters:
viewerport = 5901
maxsessions = 10
runasuser = uvncrep
logginglevel = 2
srvListAllow1 = 192.168.0.0 ;Allow network 192.168.x.x
srvListDeny0 = 127.0.0.1 ;Deny loopback
requirelistedserver=1

## Start the service
/etc/init.d/uvncrepeater start

Enjoy!

P.S. You can also check our post at:

http://forum.ultravnc.info/viewtopic.php?p=80701