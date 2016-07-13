#!/bin/bash 

subj=(001 002 003 004)
run=(1 2)

for n in $subj; do
	for r in $run; do

		cd /Users/labuser/Documents/Jonathan_gapclass/highres_data/york/behaviour/onsets_imagine/${subj}/imagine${run}
		cp e1.txt /Users/labuser/Documents/Jonathan_gapclass/highres_data/york/behaviour/onsets_imagine/${subj}/imagine${run}/${subj}_imagine${run}_stacked.txt
		cat e2.txt >> ${subj}_imagine${run}_stacked.txt | cat e3.txt >> ${subj}_imagine${run}_stacked.txt | cat e4.txt >> ${subj}_imagine${run}_stacked.txt
		echo "Created stacked onset file for subject ${subj} imagine${run}!"

done
done