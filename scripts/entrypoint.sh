#! /bin/sh

if [ ! $SSHUSER ]; then
    SSHUSER=$(date +%s | sha256sum | base64 | head -c 5 ; echo)
fi

/scripts/addproxyuser.sh $SSHUSER $PASSWORD $USER_SSH_ALLOWED

/scripts/run_proxy.sh