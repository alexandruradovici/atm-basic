#!/bin/bash

#!/bin/bash

function corection
{
	POINTS=0
	rm -rf results/$1/*
	mkdir results/$1
	files=`ls files/$1`
	for file in $files
	do
		filename=`basename $file .atmbas`
		echo -n $filename "........"
		node main.js files/$1/$file --ast > results/$1/$filename.ast
		if node main.js files/$1/$file > output
		then
			mv output results/$1/$filename.out
			if diff results/$1/$filename.out outputs/$1/$filename.out
			then
				echo OK
				POINTS=$((POINTS+1))
			else
				echo NO
			fi
		else
			echo $? > results/$1/$filename.errno
			mv output results/$1/$filename.out
			if diff results/$1/$filename.errno outputs/$1/$filename.errno
			then
				echo OK
				POINTS=$((POINTS+1))
			else
				echo NO
			fi
		fi
	done
	echo POINTS: $POINTS
}

rm -rf results/*
mkdir results

corection simple
POINTS_SIMPLE=$POINTS
corection complex
POINTS_COMPLEX=$POINTS
corection error
POINTS_ERROR=$POINTS

POINTS_TOTAL=$(($POINTS_SIMPLE+$POINTS_COMPLEX+$POINTS_ERROR))

echo POINTS TOTAL $POINTS_TOTAL