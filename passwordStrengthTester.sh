<<'Comment'
---------------Lab Project----------------------
Linux Shell Programming (ITO-714) 
Shell Script to Check for Password Strength

Contributors:
-Ashwath Mahajan
-Shubhankar Sharma
-Suvrat Sharma
-Ananya Sharma

------------------------------------------------
Comment

flag=0
upper=26
lower=26
special=22
numerics=10
domain=0

while [ $flag -eq 0 ]
do
    echo -e "\nEnter the password\n"
    read password

    len="${#password}"

    if [ $len -ge 8 ]
    then
        echo "$password" | grep -q [0-9]
            if [ $? -eq 0 ]
            then
                echo "$password" | grep -q [A-Z]
                    if [ $? -eq 0 ]
                    then
                        echo "$password" | grep -q [a-z]   
                            if [ $? -eq 0 ]
                            then
                                if [[ $password == *['!'@'#'\$%^\&*()_+]* ]]
                                then
                                    flag=1
                                    echo -e "\nStrong Password\n"
                                else
                                    echo -e "\nWeak Password\nInclude Special characters"
                                fi
                            else
                                echo -e "\nWeak Password\nInclude Lower case characters"
                            fi
                    else
                        echo -e "\nWeak Password\nInclude Upper case characters" 
                    fi
            else
                echo -e "\nWeak Password\nPlease include the numerics"   
            fi
    else
        echo -e "\nWeak Password\nLength should be greater than 8 characters"
    fi
done

domain=`expr $upper + $lower + $special + $numerics`

echo $(($domain**$len))
echo "Calculations will be required to break the password"
