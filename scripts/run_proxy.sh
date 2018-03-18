#! /bin/sh

if [ ! -f /etc/ssh/ssh_host_rsa_key ]; then
    /usr/bin/ssh-keygen -A
fi

exec /usr/sbin/sshd -D -e -p $PORT