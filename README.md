# mybash
easy bash for audit logging and 2fa


# install steps (base on centos)

1. copy files(mybash.sh and install.sh) to /root/bin

2. execute following commands

cd /root/bin 

sh ./install.sh

3. choose any user to work with mybash. 

a) edit /etc/passwd, change bash of the user you choose "/bin/bash" to "/usr/bin/mybash"

b) set a password in $HOME/.mybash/passwd

4. login check if this works right.

when you login, mybash would ask you for VerCode, just input the password you set in $HOME/.mybash/passwd

Congratulations, that's all for mybash.

