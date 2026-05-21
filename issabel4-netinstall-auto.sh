#!/bin/bash
# Automated Issabel 4 netinstall — no prompts, passwords: admin/admin
# Based on the official issabel-netinstall.sh

function generate_files
{
cat > /tmp/inst1.txt <<'EOF'
acl
apr
apr-util
audit
audit-libs
authconfig
autogen-libopts
basesystem
bash
bind-libs-lite
bind-license
binutils
biosdevname
btrfs-progs
bzip2-libs
ca-certificates
centos-logos
centos-release
chkconfig
chrony
compat-libtiff3
coreutils
cpio
cracklib
cracklib-dicts
cronie
cronie-noanacron
crontabs
cryptsetup-libs
cups-libs
curl
cyrus-imapd
cyrus-imapd-utils
cyrus-sasl
cyrus-sasl-lib
cyrus-sasl-plain
dbus
dbus-glib
dbus-libs
dbus-python
dhclient
dhcp
dhcp-common
dhcp-libs
dialog
diffutils
dmidecode
dnsmasq
dracut
dracut-config-rescue
dracut-network
e2fsprogs
e2fsprogs-libs
ebtables
elfutils-libelf
elfutils-libs
epel-release
ethtool
expat
festival
festival-lib
festival-speechtools-libs
festvox-slt-arctic-hts
file
file-libs
filesystem
findutils
fipscheck
fipscheck-lib
firewalld
flac-libs
fprintd-pam
fontconfig
fontpackages-filesystem
freetype
fxload
gawk
gdbm
gdbm-devel
gettext
gettext-libs
ghostscript
ghostscript-fonts
glib2
glibc
glibc-common
glibc-devel
glibc-headers
glib-networking
gmp
gnupg2
gnutls
gobject-introspection
gpgme
gpm-libs
grep
groff-base
grub2
grub2-efi
grub2-tools
grubby
gsettings-desktop-schemas
gsm
gzip
hardlink
hdparm
hostname
httpd
httpd-tools
hwdata
info
initscripts
iproute
iprutils
iptables
iptables-services
iptables-devel
iputils
irqbalance
jansson
jbigkit-libs
json-c
kbd
kbd-misc
kernel
kernel-devel
kernel-headers
kernel-tools
kernel-tools-libs
kexec-tools
keyutils-libs
kpartx
krb5-libs
lcms2
less
libacl
libaio
libao
libassuan
libasyncns
libattr
libblkid
libcap
libcap-ng
libcom_err
libcroco
libcurl
libdaemon
libdb
libdb-devel
libdb-utils
libdrm
libedit
libestr
libffi
libfontenc
libgcc
libgcrypt
libgomp
libgpg-error
libgudev1
libICE
libidn
libjpeg-turbo
libmnl
libmodman
libmount
libndp
libnetfilter_conntrack
libnfnetlink
libnl3
libnl3-cli
libogg
libpcap
libpciaccess
libpipeline
libpng
libproxy
libpwquality
libreport-filesystem
libselinux
libselinux-python
libselinux-utils
libsemanage
libsepol
libSM
libsndfile
libsoup
libss
libssh2
libstdc++
libsysfs
libtasn1
libteam
libtiff
libtiff-devel
libtiff-tools
libtool-ltdl
libunistring
libusb
libusbx
libuser
libutempter
libuuid
libverto
libvorbis
libX11
libX11-common
libXau
libxcb
libXext
libXfont
libXi
libxml2
libXpm
libxslt
libXt
libXtst
libzip
linux-firmware
lm_sensors-libs
lockdev
logrotate
lua
lvm2
lvm2-libs
lzo
mailcap
mailman
mailx
make
man-db
mariadb
mariadb-libs
mariadb-server
mdadm
memtest86+
mgetty
microcode_ctl
ModemManager-glib
mod_ssl
mokutil
mozjs17
mtools
MySQL-python
ncurses
ncurses-base
ncurses-libs
net-snmp-agent-libs
net-snmp-libs
nettle
net-tools
newt
newt-python
nmap
nmap-ncat
nspr
nss
nss-softokn
nss-softokn-freebl
nss-sysinit
nss-tools
nss-util
ntp
ntpdate
numactl-libs
openldap
openssh
openssh-clients
openssh-server
openssl
openssl-libs
opus
os-prober
p11-kit
p11-kit-trust
pam
parted
passwd
pciutils
pciutils-libs
pcre
perl
perl-Archive-Tar
perl-Business-ISBN
perl-Business-ISBN-Data
perl-Carp
perl-CGI
perl-Compress-Raw-Bzip2
perl-Compress-Raw-Zlib
perl-constant
perl-Crypt-OpenSSL-Bignum
perl-Crypt-OpenSSL-Random
perl-Crypt-OpenSSL-RSA
perl-Data-Dumper
perl-Date-Manip
perl-DBD-MySQL
perl-DB_File
perl-DBI
perl-devel
perl-Digest
perl-Digest-HMAC
perl-Digest-MD5
perl-Digest-SHA
perl-Encode
perl-Encode-Detect
perl-Encode-Locale
perl-Error
perl-Exporter
perl-ExtUtils-Install
perl-ExtUtils-MakeMaker
perl-ExtUtils-Manifest
perl-ExtUtils-ParseXS
perl-FCGI
perl-File-Listing
perl-File-Path
perl-File-Temp
perl-Filter
perl-Getopt-Long
perl-HTML-Parser
perl-HTML-Tagset
perl-HTTP-Cookies
perl-HTTP-Daemon
perl-HTTP-Date
perl-HTTP-Message
perl-HTTP-Negotiate
perl-HTTP-Tiny
perl-IO-Compress
perl-IO-HTML
perl-IO-Socket-INET6
perl-IO-Socket-IP
perl-IO-Socket-SSL
perl-IO-Zlib
perl-libs
perl-libwww-perl
perl-LWP-MediaTypes
perl-macros
perl-Mail-DKIM
perl-Mail-IMAPClient
perl-Mail-SPF
perl-MailTools
perl-NetAddr-IP
perl-Net-Daemon
perl-Net-DNS
perl-Net-HTTP
perl-Net-LibIDN
perl-Net-SMTP-SSL
perl-Net-SSLeay
perl-Package-Constants
perl-parent
perl-Parse-RecDescent
perl-PathTools
perl-PlRPC
perl-Pod-Escapes
perl-podlators
perl-Pod-Perldoc
perl-Pod-Simple
perl-Pod-Usage
perl-Scalar-List-Utils
perl-Socket
perl-Socket6
perl-Storable
perl-Sys-Syslog
perl-Test-Harness
perl-Text-ParseWords
perl-threads
perl-threads-shared
perl-TimeDate
perl-Time-HiRes
perl-Time-Local
perl-URI
perl-version
perl-WWW-RobotRules
php
php-bcmath
php-cli
php-common
php-gd
php-imap
php-mbstring
php-mcrypt
php-mysql
php-pdo
php-pear
php-process
php-soap
php-tcpdf
php-tidy
php-xml
pinentry
pkgconfig
plymouth
plymouth-core-libs
plymouth-scripts
policycoreutils
popt
poppler
poppler-data
poppler-utils
pth
pulseaudio-libs
pygobject2
pygobject2-codegen
pygpgme
pytalloc
python
python-babel
python-backports
python-backports-ssl_match_hostname
python-crypto
python-devel
python-deltarpm
python-gudev
python-inotify
python-IPy
python-libs
python-lxml
python-pycurl
python-pyudev
python-requests
python-setuptools
python-six
python-urllib3
python-virtualenv
pyxdg
qhull
qrencode-libs
quota
quota-nls
readline
redhat-lsb-core
redhat-lsb-submod-security
rng-tools
rootfiles
rpm
rpm-build-libs
rpm-libs
rpm-python
rsync
rsyslog
rtld
sed
selinux-policy
selinux-policy-targeted
sharutils
shim
shim-x64
slang
slang-devel
smartmontools
snappy
spandsp
spandsp-devel
sqlite
sudo
sysfsutils
sysklogd
systemd
systemd-libs
systemd-python
systemd-sysv
sysvinit-tools
talk
tar
tcp_wrappers
tcp_wrappers-libs
teamd
telnet
tftp
tftp-server
time
tmpwatch
tuned
tzdata
unixODBC
unzip
usbutils
usermode
ustr
util-linux
uuid
uuid-devel
vim-minimal
virt-what
volume_key-libs
wget
which
words
xfsprogs
xinetd
xmlrpc-c
xmlrpc-c-client
xz
xz-libs
yelp-tools
yelp-xsl
ypbind
yp-tools
yum
yum-metadata-parser
yum-plugin-fastestmirror
yum-utils
zip
zlib
EOF

cat > /tmp/inst2.txt <<'EOF'
issabel-base
issabel-framework
issabel-pbx
issabel-email_admin
issabel-sound
issabel-myprofile
issabel-addons
issabel-reports
dahdi-tools-linux
issabel-system
issabel-panel
issabel-fop2
issabel-firstboot
issabel-endpoint-configuration
issabel-dashboard
asterisk
asterisk-chan_dongle
asterisk-core-sounds-en
asterisk-core-sounds-es
asterisk-flash
asterisk-moh-opsound-wav
asterisk-mysql
asterisk-sounds-es
asterisk-voicemail
fail2ban
issabelpbx
issabelpbx-callwaiting
issabelpbx-cidlookup
issabelpbx-daynight
issabelpbx-digital_attendant
issabelpbx-fax
issabelpbx-findmefollow
issabelpbx-ivr
issabelpbx-miscapps
issabelpbx-miscdests
issabelpbx-parking
issabelpbx-pinsets
issabelpbx-printextensions
issabelpbx-presencestate
issabelpbx-queueprio
issabelpbx-recording
issabelpbx-ringgroups
issabelpbx-setcid
issabelpbx-speech_engine
issabelpbx-speech_engine_google
issabelpbx-timeconditions
issabelpbx-tts
issabelpbx-userman
issabelpbx-webservices
k3b
lame
mISODn
mISODn-user
mISODn-user-devel
mISODn-user-libs
mpg123
pjproject
sox
soundtouch
tbb
zabbix20-agent
zabbix20-get
zabbix20-sender
EOF
}

function settings
{
  if [ ! "$TERM" = "xterm-256color" ]; then 
    export NCURSES_NO_UTF8_ACS=1
  fi
  BACKTITLE="Issabel 4 netinstall"
  setenforce 0
  sed -i 's/\(^SELINUX=\).*/\SELINUX=disabled/' /etc/selinux/config
  /usr/sbin/groupadd -f -r asterisk
  if ! grep -q asterisk: /etc/passwd ; then
    echo -e "Adding new user asterisk..."
    /usr/sbin/useradd -r -g asterisk -c "Asterisk PBX" -s /bin/bash -d /var/lib/asterisk asterisk
  fi
}

function welcome
{
  echo "Issabel 4 automated installation starting..."
}

function sel_astver
{
  ASTVER=11
  echo "Selected Asterisk version: $ASTVER"
}

function add_repos
{
cat > /etc/yum.repos.d/Issabel.repo <<EOF
[issabel-base]
name=Base RPM Repository for Issabel
mirrorlist=http://mirror.issabel.org/?release=4&arch=\$basearch&repo=base
gpgcheck=0
enabled=1
gpgkey=http://repo.issabel.org/issabel/RPM-GPG-KEY-Issabel

[issabel-updates]
name=Updates RPM Repository for Issabel
mirrorlist=http://mirror.issabel.org/?release=4&arch=\$basearch&repo=updates
gpgcheck=0
enabled=1
gpgkey=http://repo.issabel.org/issabel/RPM-GPG-KEY-Issabel

[issabel-updates-sources]
name=Updates RPM Repository for Issabel
mirrorlist=http://mirror.issabel.org/?release=4&arch=\$basearch&repo=updates
gpgcheck=0
enabled=1
gpgkey=http://repo.issabel.org/issabel/RPM-GPG-KEY-Issabel

[issabel-beta]
name=Beta RPM Repository for Issabel
mirrorlist=http://mirror.issabel.org/?release=4&arch=\$basearch&repo=beta
baseurl=http://repo.issabel.org/issabel/4/beta/\$basearch/
enabled=0

[issabel-extras]
name=Extras RPM Repository for Issabel
mirrorlist=http://mirror.issabel.org/?release=4&arch=\$basearch&repo=extras
gpgcheck=1
enabled=1
gpgkey=http://repo.issabel.org/issabel/RPM-GPG-KEY-Issabel
EOF

cat > /etc/yum.repos.d/commercial-addons.repo <<EOF
[commercial-addons]
name=Commercial-Addons RPM Repository for Issabel
mirrorlist=http://mirror.issabel.org/?release=4&arch=\$basearch&repo=commercial_addons
gpgcheck=1
enabled=1
gpgkey=http://repo.issabel.org/issabel/RPM-GPG-KEY-Issabel
EOF
}

function additional_packages
{
  # defaults: options 1 (licensed) + 2 (blocklist)
  ADDPKGS="issabel-license webconsole issabel-wizard issabel-packet_capture issabel-upnpc issabel-two_factor_auth issabel-theme_designer issabel-network-agent issabel-packetbl"
  echo "Additional packages: $ADDPKGS"
}

function yum_gauge
{
  PACKAGES=$1
  TITLE=$2
  YUMCMD=$3
  echo ">>> $TITLE"
  n=$(echo $PACKAGES | wc -w)
  i=0
  for p in $PACKAGES; do
    PCT=$(( 100*(++i)/n ))
    printf "\r[%3d%%] %s" "$PCT" "$p"
    rpm --quiet -q $p
    if [ $? -ne 0 ] || [ "$YUMCMD" = "update" ]; then
      if ! yum $BETAREPO --nogpg -y $YUMCMD $p &>/dev/null; then
        echo "$p: ERROR installing package" >> /tmp/netinstall_errors.txt
      fi
    fi
  done
  echo ""
  echo "Done."
}

function update_os
{
  PACKAGES=$(yum -d 0 list updates | tail -n +2 | cut -d' ' -f1) &> /dev/null
  yum_gauge "$PACKAGES" "Yum update" update
}

function install_packages
{
  yum clean all &> /dev/null
  PACKAGES=$(cat /tmp/inst1.txt)
  yum_gauge "$PACKAGES" "(1/2) Installing base packages..." install
  PACKAGES=$(cat /tmp/inst2.txt)
  yum_gauge "$PACKAGES $ADDPKGS" "(2/2) Installing Issabel packages..." install
}

function post_install
{
  echo "Post-install configuration..."
  systemctl enable mariadb.service
  systemctl start mariadb
  mysql -e "SET PASSWORD FOR 'root'@'localhost' = PASSWORD('iSsAbEl.2o17')"
  setenforce 0
  sed -i 's/\(^SELINUX=\).*/\SELINUX=disabled/' /etc/selinux/config
  cp -a /etc/sysconfig/iptables /etc/sysconfig/iptables.org-issabel-"$(/bin/date "+%Y-%m-%d-%H-%M-%S")"
  systemctl enable httpd
  systemctl disable firewalld
  systemctl stop firewalld
  firewall-cmd --zone=public --add-port=443/tcp --permanent
  firewall-cmd --reload
  rm -f /etc/issabel.conf
  mysql -piSsAbEl.2o17 -e "SET PASSWORD FOR 'root'@'localhost' = PASSWORD('')"
  echo "noload => cdr_mysql.so" >> /etc/asterisk/modules_additional.conf
  mkdir -p /var/log/asterisk
  mkdir -p /var/log/asterisk/cdr-csv
  [ -f /etc/asterisk/extensions_custom.conf.sample ] && mv /etc/asterisk/extensions_custom.conf.sample /etc/asterisk/extensions_custom.conf
  /usr/sbin/amportal chown
  echo "Post-install done."
}

function check_dialog
{
  if ! dialog --version &>/dev/null; then
    echo "Installing dialog..."
    yum -y install dialog
  fi
}

function enable_beta
{
  return 1
}

function set_passwords
{
  echo "Setting passwords (MariaDB + Web admin)..."
  /usr/bin/issabel-admin-passwords --cli init admin admin
}

function cleanup
{
  echo "Cleaning up..."
  rm -f /tmp/inst1.txt /tmp/inst2.txt
  /usr/sbin/amportal chown
}

function bye
{
  echo "Installation complete! Rebooting..."
}

# ---- Main ----
check_dialog
settings
welcome
sel_astver
additional_packages
generate_files
add_repos
enable_beta
welcome
update_os
install_packages
post_install
set_passwords
cleanup
bye
reboot
