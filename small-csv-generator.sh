#!/bin/bash
if [ $# -ne 3 ] ; then
	 echo "usage: <prog> num_ids num_timestamps skip_size"
	 exit 1
fi

echo "Adding $1 ids with $2 timestamps to FG-$3"

csv=${1}-${2}-${3}-out.csv

# header
echo "id,ts,f${3}" > $csv

c=0
c=0
steps=$(($2 / $3))
echo "Number of steps is: $steps"

for i in `seq 1 $1`
do
  str="blah blah"
  t=1000
  for j in `seq 1 $steps`
  do
    t=$(($t + $3)) 
    c=$(($c + 1))
    echo "$i,$t,f${3}-${c}" >> $csv      
  done
done

echo "Done"
