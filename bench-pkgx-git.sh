#!/bin/sh

eval "$(pkgx --shellcode)"
env +git

echo -n "system git:"
time /usr/bin/git --version

echo -n "pkgx git:"
time git --version
