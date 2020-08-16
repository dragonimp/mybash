#!/bin/bash
###########################
# mybash with vercode
# by wengzs 2020.8.15
###########################

function getgooglecode
{
        passwdfile="$HOME/.google_authenticator"
        if [ -e $passwdfile ];then
                vercode=`head -1 $passwdfile`
                vercode=`googlecode.py $vercode`
        fi
        echo "$vercode"
}

function getmybashcode
{
        passwdfile="$HOME/.mybash/passwd"
        if [ -e $passwdfile ];then
                vercode=`cat $passwdfile`
        fi
        echo "$vercode"
}


trap "echo bye;exit 0" 1 2 3 15

login=0
for i in `seq 16`; do
        vercode0=`getmybashcode`
        vercode1=`getgooglecode`
        vercode=${vercode0:-$vercode1}
        #echo $vercode $vercode1 $vercode0
        if [ -z "$vercode" ];then
                login=1; break
        fi


        if ! read -t 50 -s -p 'VerCode: ' password ;then
                echo -e 'Login incorrect\n'
        fi

        if [ -z "$password" ];then
                echo -e "input Code"
        else
                                                                                                                                           1,1           Top                 echo -e "input Code"
        else

                vercode=`getgooglecode`

                test "$password" == "$vercode" -o "$password" == "$vercode0"  -o "$password" == "$vercode1"
                if [ $? -eq 0 ];then
                        login=1; break
                fi
                echo -e 'Login incorrect\n'
        fi
done

echo

if [ $login -eq 0 ];then
        echo "login failed, bye"
        exit 0
fi

if [ "$1" == "login" ];then
        echo "login ok ,welcome"
else
        /bin/bash
fi
