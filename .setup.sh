#!/bin/bash

# Run this to setup $HOME, install packages, etc

die() { echo "$*" 1>&2; exit 2; }

[ -f /etc/apt/sources.list ] || die "Unable to find /etc/apt/sources.list, is this a Debian system?"

# enable Debian unstable
if ! grep -sq unstable /etc/apt/sources.list; then
	sudo tee -a /etc/apt/sources.list <<-EOF

	deb http://deb.debian.org/debian/ unstable main contrib non-free
	EOF
fi

#sudo apt-get update

DEBS_TO_INSTALL="docker.io vim git git-man manpages-posix"

#echo ${DEBS_TO_INSTALL} | xargs -n 1 -P 1 sh -c 'sudo apt-get install
echo ${DEBS_TO_INSTALL} | sudo xargs -n 10 apt-get -y install

sudo usermod -a -G docker $USER

echo "Log out and back in to ensure groups, etc, are set."
