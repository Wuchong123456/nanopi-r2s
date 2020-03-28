#!/bin/bash
mkdir friendlywrt-rk3328
cd friendlywrt-rk3328
repo init -u https://github.com/friendlyarm/friendlywrt_manifests -b master-v19.07.1 -m rk3328.xml --repo-url=https://github.com/friendlyarm/repo --no-clone-bundle --depth=1
repo sync -c --no-tags --no-clone-bundle -j8
cd friendlywrt/ && git fetch --unshallow
