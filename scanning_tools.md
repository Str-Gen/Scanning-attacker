# Scanning attacker

## Main BlackArch tools

### Protocol-specific

#### SSL

* [x] [A2SV](https://github.com/hahwul/a2sv) large
* [x] [cipherscan](https://github.com/mozilla/cipherscan) large
* [x] [sslscan](https://github.com/DinoTools/sslscan/) large
* [x] [ssllabs-scan](https://github.com/ssllabs/ssllabs-scan) medium
* [x] [littleblackbox]()

yay -S a2sv cipherscan sslscan ssllabs-scan

#### DNS
* [x] [bluto](https://github.com/darryllane/Bluto) small
python2 -m pip install --user docopt lxml oletools pdfminer
* [x] [nsec3map](https://github.com/anonion0/nsec3map) medium

#### SNMP
* [x] [braa](http://s-tech.elsat.net.pl/braa/) small
change the Makefile CLFAGS if you like to "-march=native -O2 -pipe -fstack-protector-strong -fno-plt" without the quote marks

#### D-BUS
* [x] [dbusmap](https://github.com/taviso/dbusmap) small
yay -S procps-ng libxml2 glib2
ln -s /usr/lib/libprocps.so.7.1.0 /usr/lib/libprocps.so.6

#### DHCP
* [x] [dhcpig](https://github.com/kamorin/DHCPig) medium

#### SMB
* [x] [enum-shares](https://github.com/dejanlevaja/enum_shares) small
yay -S python2-ipcalc

#### FTP
* [x] [ftpscout](https://github.com/RubenRocha/ftpscout) small

#### SMTP
* [x] [smtp-test](https://github.com/isaudits/smtp-test) small

#### KNX (home automation)
* [x] [knxmap](https://github.com/takeshixx/knxmap) small
fix executable /usr/bin/knxmap to point to the right file

#### LLMNR, NBT-NS, mDNS
* [x] [responder](https://github.com/SpiderLabs/Responder/) large

#### MODBUS (PLC)
* [] [smod](https://github.com/enddo/smod)
currently not installable, broken dependency

### Web server / service related

* [x] [nikto](https://github.com/sullo/nikto) large
* [x] [davtest](https://github.com/cldrn/davtest) small
* [x] [s3scanner](https://github.com/sa7mon/S3Scanner) medium
* [x] [v3n0m-scanner](https://github.com/v3n0m-Scanner/V3n0M-Scanner) medium
pip install bs4 aio_ping aioftp socksipy-branch termcolor
* [x] [XSSTracer](https://github.com/1N3/XSSTracer) small

#### Vhost enumeration

* [x] [allthevhosts](https://labs.portcullis.co.uk/tools/finding-all-the-vhosts/) small

python2 -m pip install --user bs4

#### Subdomain enumeration / takeover
* [x] [amass](https://github.com/caffix/amass) large
* [x] [subover](https://github.com/Ice3man543/SubOver) medium
* [] [tachyon](https://github.com/delvelabs/tachyon) medium
has a version dependency issue right now

#### Apache
* [x] [apache_users](https://labs.portcullis.co.uk/downloads/) small
yay -S perl-parallel-forkmanager

#### CORS
* [x] [corstest](https://github.com/RUB-NDS/CORStest) small

### CMS
* [x] [CMSmap](https://github.com/dionach/CMSmap) small
sudo pip install /usr/share/cmsmap

* [x] [droopescan](https://github.com/droope/droopescan) large

* [x] [vane](https://github.com/delvelabs/vane) huge

### Java-RMI
* [x] [barmie](https://github.com/NickstaDB/BaRMIe) small
best to get the jar and execute that, blackarch install is broken

### MongoDB
* [x] [mongoaudit](https://github.com/stampery/mongoaudit/) medium

### Dashboard finder / credential scanners
* [x] [cangibrina](https://github.com/fnk0c/cangibrina) small

* [x] [changeme](https://github.com/ztgrace/changeme) small
python2 -m pip install --user redis jinja2 selenium shodan memcache pymongo pysnmp
yay -S python2-memcached

* [x] [laf](https://github.com/takeshixx/laf) small

### Version control
* [x] [dvcs-ripper](https://github.com/kost/dvcs-ripper)
yay -S perl-parallel-forkmanager perl-redisdb perl-algorithm-combinatorics


### Windows
* [] [crackmapexec](https://github.com/byt3bl33d3r/CrackMapExec) large
Not tested yet, might be difficult to install

* [x] [eternal-scanner](https://gitlab.com/peterpt/Eternal_Scanner) small

* [x] [ranger-scanner](https://github.com/funkandwagnalls/ranger) medium

### IPv6
* [x] [ipv6toolkit](https://github.com/fgont/ipv6toolkit) large

### Big scanners

### OpenVas
* [x] [openvas-cli](https://github.com/greenbone/) huge

#### Vuls
* [x] [vuls](https://github.com/future-architect/vuls) large

#### NMAP
* [x] [nmap](https://github.com/nmap/nmap) huge 
* [x] [vulscan](https://github.com/scipag/vulscan) small
* [x] [autonse](https://github.com/m4ll0k/AutoNSE) small

#### ZMAP
* [x] [zmap](https://github.com/zmap/zmap) large

## Arch linux preparation

yay -S python2 python2-pip
yay -S perl
