#!/bin/sh

while [ 1 ] ; 
	do cat /proc/4410/maps  | grep heap ; 
	sleep 1; 
done
