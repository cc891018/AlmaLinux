#!/bin/bash


if [ $(find $1 -name $2) ]
then
	return 0
else
	return 1
fi
