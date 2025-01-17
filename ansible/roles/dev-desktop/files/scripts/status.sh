#!/usr/bin/env bash

for d in rust*
do
    if ! [ -d $d ]; then
        continue
    fi
    cd $d
    echo $d
    git status --short --branch --untracked-files=no --ignore-submodules --no-ahead-behind --no-renames
    cd ..
done
