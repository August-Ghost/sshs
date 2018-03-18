#! /bin/sh

if [ $1 ]; then
    adduser -D $1
    mkdir /home/$1/.ssh
    chown $1:$1 /home/$1/.ssh
    chmod 0700 /home/$1/.ssh;
    touch /home/$1/.ssh/authorized_keys
    chown $1:$1 /home/$1/.ssh/authorized_keys
    echo "User $1 created."
    if [ ! $2  ]; then
       PASSWORD=$(date +%s | sha256sum | base64 | head -c $RANDOM_PASSWORD_LEN ; echo)
    else
         PASSWORD=$2
    fi
    echo "$1:$PASSWORD" | chpasswd
    echo "User name: $1 | Password: $PASSWORD"

else
    echo "An user name must be specified."
fi

if [ $3 ]; then
    echo "$2" > /home/$1/.ssh/authorized_keys
    echo "State of /home/$1/.ssh/authorized_keys :"
    cat /home/$1/.ssh/authorized_keys
fi