echo "Enter a and b: "
read a
read b
echo "Enter Operator"
read op
case $op in
        +) echo "Result: `expr $a + $b`";;
        -) echo "Result: `expr $a - $b`";;
        /) echo "Result: `expr $a / $b`";;
        \*) echo "Result: `expr $a * $b`";;
esac
