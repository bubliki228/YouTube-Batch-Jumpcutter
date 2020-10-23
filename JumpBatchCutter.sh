#!/bin/sh
sounded_speed=1
silent_speed=99999
silent_threshold=0.025
frame_margin=2
frame_quality=1
while getopts 'S:s:t:m:q:' option;
do
	case "${option}"
	in
	S) sounded_speed=${OPTARG};;
	s) silent_speed=${OPTARG};;
	t) silent_threshold=${OPTARG};;
	m) frame_margin=${OPTARG};;
	q) frame_quality=${OPTARG};;
esac
done


mkdir videos_temp_long
cd videos_temp_long
python3 ../YTHDBatchDownloader/script.py --list ../LINK_LIST.txt
cd ..

FILES=../videos_temp_long/*

cd jumpcutter
for item in $FILES
do
	python3 jumpcutter.py --input_file $item  --output_file $item.mp4 --sounded_speed $sounded_speed --silent_threshold $silent_threshold --silent_speed $silent_speed --frame_margin $frame_margin --frame_quality $frame_quality
	rm $item
done

mkdir ../Result
mv $FILES ../Result/
rm -d ../videos_temp_long 
