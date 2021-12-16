#!/bin/sh

set -ex

src=http://ppa.launchpad.net/ansible/ansible/ubuntu
dest=/downloads

mkdir -p "$dest"
wget \
	--mirror -q --show-progress -nH --cut-dirs=1 --convert-links --adjust-extension --page-requisites --no-parent --reject html,gif \
	"$src" -P "$dest"

