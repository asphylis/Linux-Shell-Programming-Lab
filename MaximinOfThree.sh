echo "Enter three values"
read num1
read num2
read num3
if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]
then
        echo "Maximum of three is $num1"
elif [ $num2 -gt $num1 ] && [ $num2 -gt $num3 ]
then
        echo "Maximum of three is $num2"
else
        echo "Maximum of three is $num3"
fi
