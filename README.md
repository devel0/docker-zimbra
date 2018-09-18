# docker-zimbra

zimbra mail, contact, calendar server docker

## prerequisites

- [linux-scripts-utils](https://github.com/devel0/linux-scripts-utils)
- [docker-ubuntu](https://github.com/devel0/docker-ubuntu.git)
- [domain controller](https://github.com/devel0/docker-dc.git) with valid `ldapquery` user
- replce `example.com` with your fqdn and `my` with your dc name
- `zimbra.example.com` registered dns
- `/scripts/constants` with `ip_zimbra_srv` zimbra docker ip address
- download [zimbra-zcs-8.7.11.tar.gz](https://files.zimbra.com/downloads/8.7.1_GA/zcs-8.7.1_GA_1670.UBUNTU16_64.20161025045114.tgz) into clone repo opt subfolder

## install

```
./build.sh
./run.sh
```
