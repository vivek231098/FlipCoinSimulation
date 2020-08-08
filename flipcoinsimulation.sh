randomCheck=$((RANDOM%2))
        if [ $randomCheck -eq 1 ]
        then
                ((Heads++))
        else
                ((Tails++))
        fi
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
