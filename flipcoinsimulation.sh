Heads=0
Tails=0
while [[ $Heads -lt 21 && $Tails -lt 21 ]]
do
	randomCheck=$((RANDOM%2))
	if [ $randomCheck -eq 1 ]
	then
		((Heads++))
	else
		((Tails++))
	fi
done
if [ $Heads -eq $Tails ]
then
echo " Tie is incurred "
	while [ $(($Heads-$Tails)) -eq 0 ]
	do
	 	randomCheck=$((RANDOM%2))
   	if [ $randomCheck -eq 1 ]
   	then
      	((Heads++))
   	else
      	((Tails++))
   	fi
		while [[ $(($Heads-$Tails)) -eq 1 || $(($Tails-$Heads)) -eq 1 ]]
   	do
      	randomCheck=$((RANDOM%2))
      	if [ $randomCheck -eq 1 ]
      	then
         	((Heads++))
      	else
         	((Tails++))
      	fi
   	done
	done
echo "Heads: $Heads"
echo "Tails : $Tails"
elif [ $Heads -gt $Tails ]
then
  echo "Heads won by $(($Heads-$Tails)) times more than Tails"
else
  echo "Tails won by $(($Tails-$Heads)) times more than Heads"
fi
