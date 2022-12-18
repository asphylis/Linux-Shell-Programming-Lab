#Sum of digits of given number
read -p "Enter a number : " num
sum=0

while [ $num -ne 0 ]
do
        mod=$((num%10))
        sum=$((sum+mod))
        num=$((num/10))
done

echo $sum
