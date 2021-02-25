#!/bin/sh

if [ "$#" -eq 0 ]; then
	date
else
	exec "$@"
fi