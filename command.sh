path_of_file=~/Desktop/dataset/sample2
path_of_file2=~/Desktop/ML2/sample_img

echo $path_of_file
# The first process
./main -detect $path_of_file

#read index
value=`cat index.txt`

#read total number of item in directory
total=`ls $path_of_file -l | wc -l`

echo $total

total=`expr $total - 5`
#loop work until index number over total number of item in directory
while [ $value -le $total ]
do
	
	./main -detect $path_of_file $value
	value=`cat index.txt`
done