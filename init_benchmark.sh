#!/usr/bin/env bash

function init() {
    sudo /bin/rm -rf vendor/

    composer install --no-dev --classmap-authoritative
    [ "$?" != "0" ] && exit 1

    return 0
}
