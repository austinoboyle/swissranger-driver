#!/bin/bash
processor=$(uname -p)

if [ "${processor}" = "unknown" ] 
then
    echo "Processor type not known. Please install libmesasr manually."
    return 1

elif [ "${processor}" = "x86_64" ] 
then
    echo "Detected 64-bit processor. Installing 64-bit libmesasr..."
    dpkg -i libmesasr-dev-1.0.14-706.amd64.deb
    apt-get install -f

elif [ "${processor}" = "i686" ] 
then
    echo "Detected 32-bit processor. Installing 32-bit libmesasr..."
    dpkg -i libmesasr-dev-1.0.14-706.i386.deb
    apt-get install -f
fi

echo "...done!"
