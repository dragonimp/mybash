#/bin/bash
#just for install mybash.sh
#put mybash.sh and this file at /root/bin for install

cp mybash.sh /usr/local/bin
ln -sf /usr/local/bin/mybash.sh /usr/bin/mybash
#echo /usr/bin/mybash >> /etc/shells
echo change user passwd login shell to /usr/bin/mybash
