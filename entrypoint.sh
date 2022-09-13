#!/bin/ash

case $1 in
	init | addpeer | updatepeer | delpeer | showpeers | genconfig)
		if [ -f /mnt/database.csv ]; then
			exec wg-meshconf -d database.csv "$1"
		else
			echo "Could not find /mnt/database.csv. Make sure the CSV is named correctly, and the containing directory is mounted to /mnt"
			exit 1
		fi
		;;
esac
exec "$@"
