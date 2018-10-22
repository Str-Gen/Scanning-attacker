#!/usr/bin/env bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

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

