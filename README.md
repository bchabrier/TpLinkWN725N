# TpLinkWN725N
This simple shell script automates the manual process described in the excellent page http://blog.alexandredubois.com/2015/06/02/installer-cle-wifi-tp-link-tl-wn725n-raspberrypi-v2-raspbian/
itself refering to the genuine Raspberry PI page https://www.raspberrypi.org/forums/viewtopic.php?p=462982

The objective is to automatically update the drivers of the TpLinkWN725N Wifi USB key, which is unfortunately not
supported in standard by the Raspberry PI.

It proves to be very useful when the Raspberry is connected only through Wifi and a software update (e.g. with 
'apt-get upgrade' screws up the drivers or any dependency, making the Wifi USB key not responding at the next reboot, and the Raspberry PI unreachable...

Note that there is a shell script that does the installation very well, created by @LaFambe:
https://dl.dropboxusercontent.com/u/80256631/install-8188eu.tgz





