for directory in `ls -d ./$1/*/`
do
    cd $directory
    make clean
    cd ../..
done