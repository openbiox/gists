#!/usr/bin/env bash
# author: Jianfeng
# email: lee_jianfeng@openbiox.org
# license: Apache-2.0
# version: v0.1.0
# Script to get golang versions
curl https://golang.google.cn/doc/devel/release.html|grep -E -o 'go[0-9\.]+' | grep -E -o '[0-9]\.[0-9]+(\.[0-9]+)?' | sort -V | uniq
