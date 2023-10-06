#!/bin/bash -x

: executing \'git --version\' with system git
time /usr/bin/git --version

: executing \'git branch\' with system git
time /usr/bin/git branch

: executing \'git --version\' with pkgx git
time pkgx git --version

: executing \'git branch\' with pkgx git
time pkgx git branch
