#!/bin/bash
set -x

: system git
time /usr/bin/git status

: pkgx git
time pkgx git status
