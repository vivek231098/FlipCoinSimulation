randomCheck=$((RANDOM%2))
        if [ $randomCheck -eq 1 ]
        then
                ((Heads++))
        else
                ((Tails++))
        fi
