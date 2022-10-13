read -p "Enter value: " value
if [ `expr $value %  2` == 0 ]
then
        echo "$value is Even"
else
        echo "$value is odd"
fi
