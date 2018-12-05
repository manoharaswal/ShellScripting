#!/bin/sh

INTERFACE=$1

MyIP()
{
    MY_IP=$(/sbin/ifconfig $INTERFACE | awk '/inet/ { print $2 } ' | sed -e s/addr://)
    echo ${MY_IP:-"Not connected"}
}

MyIP

