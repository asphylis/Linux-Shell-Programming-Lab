read -p "Enter Size : " n
i=1
sum=0
avg=0
echo "Enter Numbers :"
while [ $i -le $n ]
do
	read num
	sum=$((sum+num))
	i=$((i+1))
done
avg=$(echo $sum/$n | bc -l)
echo $avg
