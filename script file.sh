#!/bin/sh

rpm -qa libjpeg* libpng* freetype* gd-* gcc gcc-c++ gdbm-devel libtermcap-devel
yum -y install libjpeg* libpng* freetype* gd-* gcc gcc-c++ gdbm-devel libtermcap-devel

echo "apache is installing"
asleep 5
yum -y install httpd


echo "mariadb  is installing......"
sleep 5
echo " mariaDB 10. Centos reopos.d/MariaDB.reopos"
# MariaDB 10.1 CentOS repository list 
# http://downloads.mariadb.org/mariadb/repositories/
[mariadb]
name = MariaDB
baseurl = http://yum.mariadb.org/10.1/centos7-amd64
gpgkey=https://yum.mariadb.org/RPM-GPG-KEY-MariaDB
gpgcheck=1
 yum -y install MariaDB-server MariaDB-client
 
 echo "php is installing...
 asleep 5
 rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
 rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm
 yum -y install php70w
 
 yum -y install php70w-mysql php70w-pdo php70w-pgsql php70w-odbc php70w-mbstring php70w-mcrypt php70w-gd
 yum -y install php70w-pear php70w-pdo_dblib php70w-pecl-imagick php70w-pecl-imagick-devel php70w-xml php70w-xmlrpc


 yum search php70w
 
 
 

