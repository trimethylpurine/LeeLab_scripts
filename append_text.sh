#!/bin/bash

for i in {001..004}
do
	for j in 1 2
	do
		cd /Users/labuser/Documents/Jonathan_gapclass/highres_data/york/behaviour/onsets_imagine/${i}/imagine${j}
		cp e1.txt /Users/labuser/Documents/Jonathan_gapclass/highres_data/york/behaviour/onsets_imagine/${i}/imagine${j}/${i}_imagine${j}_stacked.txt
		cat e2.txt >> ${i}_imagine${j}_stacked.txt | cat e3.txt >> ${i}_imagine${j}_stacked.txt | cat e4.txt >> ${i}_imagine${j}_stacked.txt
		echo "Created stacked onset file for subject ${i} imagine${j}!"

	done
done
