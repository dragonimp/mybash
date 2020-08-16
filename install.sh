#/bin/bash
#just for install mybash.sh
#put mybash.sh and this file at /root/bin for install

chmod +x mybash.sh
chmod +x googlecode.py
cp mybash.sh /usr/local/bin
cp googlecode.py /usr/local/bin
ln -sf /usr/local/bin/mybash.sh /usr/bin/mybash
#echo /usr/bin/mybash >> /etc/shells
echo change user passwd login shell to /usr/bin/mybash
