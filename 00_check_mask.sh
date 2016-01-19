#!/bin/bash
basedir=/seastor/helenhelen/ISR_2015
logfile=~/DQ/project/ISR_2015/pattern/ln_mask_zscore/check_data_z.txt
maskdir=$basedir/ROI_based/ln_mask/zscore/mask/ln/DBwc
        for roi in $maskdir/*${sub}*.nii.gz
        do
        roi_prefix=`basename $roi | sed -e "s/.nii.gz//"`
	a=`3dmaskave -drange 1 1 $roi`
	echo $roi_prefix $a voxels>> $logfile
	done
