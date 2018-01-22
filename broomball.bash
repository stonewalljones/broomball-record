#!/bin/bash

set -euo pipefail
IFS=$'\n\t'



usage()
{
	echo "placeholder"
}


set +u
while [ "$1" != "" ]; do
	case $1 in
		-d | --directory )	shift
					directory=$1
					echo "$directory"
					;;
		-t | --time )		shift
					gametime=$1
					echo "$gametime"
					;;
		-T | --team )		shift
					teamname=$1
					;;
		-B | --before )		shift
					before=$1
					;;
		-A | --after )		shift
					after=$1
					;;
		-b | --black )		rink=black
					;;
		-g | --gold )		rink=gold
					;;
		-s | --silver )		rink=silver
					;;
		-h | --help )		usage
					exit
	esac
	shift
done
set -u
