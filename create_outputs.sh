#!/bin/bash

function create_set
{
	rm -rf outputs/$1/*
	mkdir outputs/$1
	files=`ls files/$1`
	for file in $files
	do
		if node atmbasic.js files/$1/$file > output
		then
			mv output outputs/$1/`basename $file .atmbas`.out
		else
			echo $? > outputs/$1/`basename $file .atmbas`.errno
		fi
	done
}

rm -rf outputs/*
mkdir outputs

create_set simple
create_set complex
create_set error