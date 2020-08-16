# mybash
easy bash for audit logging and 2fa


# install steps (base on centos)

1. copy files(mybash.sh and install.sh) to /root/bin

2. execute following commands

cd /root/bin 

sh ./install.sh

3. set a password in 

a) options 1 : edit $HOME/.mybash/passwd , set vercode for login

b) options 2 : edit $HOME/.google_authenticator , set vercode key or use google-authenticator to make a key.

yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

yum install google-authenticator

google-authenticator 

4. choose any user to work with mybash. 

a) options 1 : edit /etc/bashrc for global or $HOME/.bashrc for user，add "source /usr/bin/mybash login" 

b) options 2 : edit /etc/passwd, change bash of the user you choose "/bin/bash" to "/usr/bin/mybash"

5. login check if this works right.

when you login, mybash would ask you for VerCode

a) just input the password you set in $HOME/.mybash/passwd

b）just input the vercode from google authenticator app, with the key set in $HOME/.google_authenticator




6. that's all for mybash.

