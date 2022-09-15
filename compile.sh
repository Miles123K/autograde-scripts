# usage: $1 = file_path (e.g. ./P1/)
#        $2 = make cmd name (e.g. a.out, p1, etc.)
#        $3 = output file (e.g. compile_fail.txt)

output = $3 || "../compile_fail.txt"
for directory in `ls -d ./$1/*/`
do
    cd $directory
    make $2 || {
        echo $directory >> $output
    }
    cd ../..
done