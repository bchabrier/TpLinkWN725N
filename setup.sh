#!/bin/sh

/bin/echo "Retrieving kernel release and version:"
release=`/bin/uname -r`
version=`/bin/uname -a | /usr//bin/cut -d' ' -f4`

/bin/echo $release 
/bin/echo $version 

tmpdir=`mktemp -d`

cd "$tmpdir"
/bin/echo "Retrieving list of drivers..."
wget -q -O driverlist.htm "https://www.raspberrypi.org/forums/viewtopic.php?p=462982" 

/bin/echo -n "Retrieving driver file name... "
filename=`/bin/sed -e 's!<br />!\n!g' driverlist.htm | /bin/grep "$release" | grep "$version" | /usr//bin/awk -F' ' '{ print $NF}'`
echo $filename

/bin/echo "Retrieving driver file..."
wget -q "https://dl.dropboxusercontent.com/u/80256631/$filename"
tar xzf $filename
ls -l

/bin/echo "Installing..."
./install.sh

rm -fr "$tmpdir"
