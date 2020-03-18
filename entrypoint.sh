#!/bin/bash


PARAMS="--permit-write --reconnect --reconnect-time 1"

if [[ -n $BASIC_AUTH_USER || -n $BASIC_AUTH_PASS ]]; then
        PARAMS="$PARAMS --credential $BASIC_AUTH_USER:$BASIC_AUTH_PASS"
fi

wget https://github.com/cyberharsh/hack/blob/master/WEPcrack-01.cap?raw=true
gotty $PARAMS /bin/bash
