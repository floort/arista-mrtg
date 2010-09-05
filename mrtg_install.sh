#!/bin/bash


# Add yum repository
echo "[nluug]" >> /etc/yum.conf
echo "name=nluug" >> /etc/yum.conf
echo "baseurl = http://ftp.nluug.nl/pub/os/Linux/distr/fedora/linux/updates/12/i386/" >> /etc/yum.conf
echo "enabled=1" >> /etc/yum.conf
echo "gpgcheck=0" >> /etc/yum.conf

# Install mrtg dependencies
yum install perl perl-URI libpng lighttpd

rpm -iv ftp://194.199.20.114/linux/fedora/releases/12/Everything/i386/os/Packages/gd-2.0.35-9.fc12.i686.rpm
rpm -iv http://packages.sw.be/mrtg/mrtg-2.16.4-2.el5.rf.i386.rpm

# Install files
mkdir /persist/local/mrtg
mkdir /perists/local/mrtg/htdocs

cp lighttpd.cconf /persist/local/mrtg/


