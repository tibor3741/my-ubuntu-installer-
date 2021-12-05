apt install hashcat wireshark hydra nmap netdiscover
--------------------------------------------------------------------------
#VPN
--------------------------------------------------------------------------
#Vpn Configurete and Install: 
apt install  dialog python3-setuptools resolvconf python3-pip python3
---------------------------------------------------------------------------
pip3 install protonvpn-cli --upgrade
protonvpn-cli --version
protonvpn init
protonvpn connect
-----------------------------------------------------------------------------
#DHCP SERVER 
isc-dhcp-server
isc-dhcp-client
----------------------------------------------------------------------------
#SAMMBA HOME SERVER
----------------------------------------------------------------------------
mkdir my-stuf 
mkdir kids-stuf 
mkdir wife-stuf 
mkdir everybody 
mkdir everybody/videos 
mkdir everybody/music

chmod 777 my-stuf 
chmod 777 kids-stuf 
chmod 777 wife-stuf 
chmod 777 everybody 
chmod 777  everybody/videos 
chmod 777 everybody/music

apt install samba testparm

sudo nano /etc/samba/smb.conf
[global]
workgroup = Workgroup
[Evrybody]
  path=/everybody 
  browseable=yes
  read only=no
  valid user= kid me wife
[Music]
  path=/everybody/music
  browseable=yes
  read only=no
  valid user= kid me wife
[videos]
  path=/everybody/videos
  browseable=yes
  read only=no
  valid user= kid me wife
[MyStuff]
  path=/my-stuff
  browseable=no
  read only=no
  valid user= me 
  
[WifeStuff]
  path=/wife-stuff
  browseable=no
  read only=no
  valid user= wife 
  
[Kidstuff]
  path=/my-stuff
  browseable=no
  read only=no
  valid user= kid wife

save
testparm /etc/samba/smb.conf
-------------------------------------------------------------











