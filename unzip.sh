files=./$1/*.zip
for item in $files
do
	x=$item
	y=${x%.zip}
	echo "Unzipping $item"
	unzip $x -d $y
done
printf "\n"


