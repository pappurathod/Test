echo "Enter the number"
read num


function prime () {

if [ $i -lt 3 ]
then
	echo " $i is prime number"
else
	for (( j=2; j<$i; j++ ))
	do
	        ans=$(($i%j))

	        if [ $((i%j)) -eq 0 ]
	        then
	                echo " $i is not prime number"
			break
		else

			echo " $i is prime number"
			break
	        fi
	done

fi
}



for ((i=1; i<=$num; i++))
do
        res=$(($num%i))
        if [ $res -eq 0 ]
        then
		b=$i
                echo "$b is factor of $num"
		prime $i
		continue
        fi

done
