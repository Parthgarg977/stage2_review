head_win=0
tail_win=0
i=0
while [ $i -ge 0 ] ;
do
 toss_result=$((RANDOM%2))
 if [ $toss_result -eq 1 ] 
 then
   echo "heads"
   ((head_win++))
   if [ $head_win -eq 21 ]
   then
   break;
   fi
  fi
 if [ $toss_result -eq 0 ]
then
   echo "tails"
   ((tail_win++))
   if [ $tail_win -eq 21 ]
   then
   break;
   fi
 fi
let i++;
done
if [ $head_win -gt $tail_win ]
 then
   head1_win=$(($head_win - $tail_win))
   echo "Its win for head by" $head1_win
else
   tail_win=$(($tail_win - $head_win))
   echo "Its win for tail by" $tail_win
fi




