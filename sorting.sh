echo "Please enter 3 values"
read a
read b
read c
declare -A dict
declare -a arr
dict[0]=$(($a+$b*$c))
dict[1]=$(($a*$b+$c))
dict[2]=$(($c+$a/$b))
dict[3]=$(($a%$b+$c))
arr[0]=${dict[0]}
arr[1]=${dict[1]}
arr[2]=${dict[2]}
arr[3]=${dict[3]}
#echo ${dict[@]}
#i=0
#while [ $i -lt 4 ] ;
#do
# echo "enter"
#	arr[i]=${dict[i]}
# let i++;
#done
echo ${arr[@]}
read -p "Enter 1 to perform ascending or 2 to perform descending or 3 to perform both" sort
case $sort in
1)
for ((i = 0; i<4; i++))
do
    
    for((j = 0; j<4-i-1; j++))
    do
    
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            # swap
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}  
            arr[$((j+1))]=$temp
        fi
    done
done

echo "Array in ascending order :"
echo ${arr[*]} 
;;
2)
for ((i = 0; i<4; i++))
do
    for((j = i+1; j<4; j++))
    do
        if [ ${arr[i]} -lt ${arr[j]} ]
        then
            # swap
            temp=${arr[i]}
            arr[$i]=${arr[$((j))]}  
            arr[$((j))]=$temp
        fi
    done
done
echo ${arr[@]}
;;
*)
echo "exit"
esac





