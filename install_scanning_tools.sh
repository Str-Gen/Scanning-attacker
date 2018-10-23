#!/usr/bin/env bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

arch_preparation(){
    pacman -S python2 python2-pip
    pacman -S perl
}

add_blackarch() {
    curl -O https://blackarch.org/strap.sh
    chmod +x strap.sh
    sh strap.sh
}

ssl_install() {
    pacman -S a2sv cipherscan sslscan ssllabs-scan
}

dns_install() {
    pacman -S bluto nsec3map
    python2 -m pip install --user docopt lxml oletools pdfminer
}

snmp_install(){
    pacman -S braa
}

dbus_install(){
    pacman -S procps-ng libxml2 glib2
    pacman -S dbusmap
    ln -s /usr/lib/libprocps.so.7.1.0 /usr/lib/libprocps.so.6
}

dhcp_install(){
    pacman -S dhcpig
}

smb_install(){
    pacman -S enum-shares
    pacman -S python2-ipcalc
}

ftp_install(){
    pacman -S ftpscout
}

smtp_install(){
    pacman -S smpt-test
}

ipv6_install(){
    pacman -S ipv5toolkit
}

knx_install(){
    pacman -S knxmap
    sed -i 'Ns/.*/exec python3 main.py "${@}"/' /usr/bin/knxmap
}

responder_install(){
    pacman -S responder
}

webserve_install(){
    pacman -S nikto davtest s3scanner v3n0m-scanner xsstracer
    pip install bs4 aio_ping aioftp socksipy-branch termcolor
}

vhost_install(){
    pacman -S allthevhosts
    python2 -m pip install --user bs4
}

subdomain_install(){
    pacman -S amass subover
}

cms_install(){
    pacman -S cmsmap droopescan vane
    pip install /usr/shar/cmsmap
}

mongo_install() {
    pacman -S mongoaudit
}


dashboard_install(){
    pacman -S cangibrina changeme laf
    pyton2 -m pip install --user redis jinja2 selenium shodan memcache pymongo pysnmp
    pacman -S python2-memcached
}

versioncontrol_install(){
    pacman -S dvcs-ripper
    pacman -S perl-parallel-forkmanager perl-redisdb perl-algorithm-combinatorics
}

windows_install() {
    pacman -S eternal-scanner ranger-scanner
}

bigscanners_install(){
    pacman -S openvas-cli vuls nmap vulscan autonse zmap
}