#!/bin/bash
###########################
# mybash with vercode
# by wengzs 2020.8.15
###########################



login=0
for i in `seq 3`; do

  passwdfile="$HOME/.mybash/passwd"
  if [ ! -e $passwdfile ];then
    #echo "passwd not exists, login now"
    login=1; break
  fi

  if ! read -t 5 -s -p 'VerCode: ' password ;then
    exit 0
  fi
  echo

  test "$password" == `cat $passwdfile `
  if [ $? -eq 0 ];then
    login=1; break
  fi
  echo -e 'Login incorrect\n'
done

if [ $login -eq 1 ];then
  /bin/bash
fi
