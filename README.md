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

## configure

| file | token | replace with |
|---|---|---|
| [autoprov.txt](autoprov.txt) | `example.com` | mail domain name |
| | `dc=my` | local domain controller name for LDAP auth |
| | `SomeCity` | dc organization unit search filter |
| | `172.19.0.10` | dc docker ip address |
| [hosts](hosts) | `zimbra.example.com` | mail server name |
| [run.sh](run.sh) | `mail.example.com` | mail server name |
| [opt/install-lestencrypt.zimbra](opt/install-letsencrypt.zimbra) | `srv0.example.com` | letencrypt first name ( used by [renew-certs.sh](https://github.com/devel0/linux-scripts-utils/blob/master/renew-certs.sh) |

## install

```
./build.sh
./run.sh
```

## postinstall

- [force smtp auth](https://wiki.zimbra.com/wiki/Enforcing_a_match_between_FROM_address_and_sasl_username_8.5)
