#!/bin/bash
basedir=/seastor/helenhelen/ISR_2015
for m in 1 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21
do
    if [ ${m} -lt 10 ];
    then
       SUB=ISR0${m}
	sub=sub0${m}
    else
        SUB=ISR${m}
	sub=sub${m}
    fi
    echo $SUB
maskdir=$basedir/${SUB}/roi_ref/sub_hipp
        for roi in $maskdir/*.nii.gz
        do
        roi_prefix=`basename $roi | sed -e "s/.nii.gz//"`
	a=`3dmaskave -drange 1 1 $roi`
	logfile=~/DQ/project/gitrepo/ISR_2015/check_mask_${roi_prefix}.txt
	echo $sub $a voxels>> $logfile
	done
done
