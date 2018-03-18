# SSH Tunnel Server Docker Image

A simple ssh tunnel server docker image built on alpine.
The purpose is to have a simple but powerful way to create a proxy server.

## Quick Start
```bash
sudo docker run -d --name some-sshs-server -p 3170:3170 -e SSHUSER=user -e PASSWORD=DEADBEEF agailuyhkll/sshs:latest
```

Now you can configure your ssh client to establish a tunnel to your ssh proxy server.
Please refer to [How To Route Web Traffic Securely Without a VPN Using a SOCKS Tunnel](https://www.digitalocean.com/community/tutorials/how-to-route-web-traffic-securely-without-a-vpn-using-a-socks-tunnel)
for more detail.

## Environment Variables
- PORT: The port the proxy server listening to. Default is 3170.
- SSHUSER: The user to access to your proxy server. Left it blank the server will generate a random user name.
- PASSWORD: The password you specified for the user. Left it blank the server will generate a random password.
- RANDOM_PASSWORD_LEN: The length of random-generated password, default is 8.
- USER_SSH_ALLOWED: Your public key added to authorized_keys for no password logging.




