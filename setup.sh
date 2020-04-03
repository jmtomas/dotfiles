#!/bin/sh

cd $(dirname "$0")
location=$(pwd)
paths=$(find -not -type d -not -path './.git*' -not -name 'setup.sh' | cut -c 3-)

for path in $paths; do
    printf "linking $location/$path -> $HOME/.$path\n"
    rm -rf "$HOME/.$path"
    mkdir -p $(dirname "$HOME/.$path")
    ln -snf "$location/$path" "$HOME/.$path"
done
