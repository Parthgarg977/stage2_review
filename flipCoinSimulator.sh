head_win=0
tail_win=0
win1="Its win for head"
win2="Its win for tail"
i=0
while [ $i -ge 0 ] ;
do
 toss_result=$((RANDOM%2))
 if [ $toss_result -eq 1 ] 
 then
   echo "heads"
   head_win=$(($head_win + $toss_result))
   elif [ $head_win -eq 21 ]
   then
   break;
 else
   echo "tails"
   tail_win=$(($tail_win +$toss_result))
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
   echo $win1 "by" $head1_win
else
   tail_win=$(($tail_win - $head_win))
   echo $win2 $tail_win
fi



