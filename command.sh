./main -detect ~/Desktop/ML2/sample_img
value=`cat index.txt`
total=`ls ~/Desktop/dataset/sample1 -l | wc -l`
echo $total
while [ $value -le $total ]
do
	./main -detect ~/Desktop/dataset/sample1 $value
	value=`cat index.txt`
done
