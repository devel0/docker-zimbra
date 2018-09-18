#!/bin/bash

#set -x

source /scripts/utils.sh
source /scripts/constants

exdir=$(dirname `readlink -f "$0"`)

container=zimbra
container_image=searchathing/zimbra
#net=host
net=zimbra
ip="$ip_zimbra_srv"
#ip=
cpus="5"
memory="8g"

ipargs=

if [ "$ip" != "" ]; then ipargs="--ip=$ip"; fi

dk-rm-if-exists $container

docker run -tid \
	--privileged \
	--name="$container" \
	--hostname="mail.example.com" \
	--network="$net" \
	$ipargs \
	--restart="unless-stopped" \
	--cpus="$cpus" \
	--memory="$memory" \
	--volume="/nas/data/zimbra:/opt" \
	$container_image
