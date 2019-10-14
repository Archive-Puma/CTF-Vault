#!/bin/bash
if ! test -d extracted
then
	mkdir extracted
fi

cp 1000.tar extracted/
cd extracted

for i in {1000..0}
do
	file=$i.tar
	echo "File: $file"
	tar -xf $file

	if test -f flag.png
	then
		cp flag.png ..
		break
	fi 
done
cd ..
rm -rf extracted
