#!/bin/sh

if [ -e /run/minidlna/minidlna.pid ]; then
    rm /run/minidlna/minidlna.pid
fi

exec /usr/sbin/minidlnad -r -S
