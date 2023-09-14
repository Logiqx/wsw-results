for year in 2023
do
    convert docs/img/wswlogo_print.png  -gravity North -pointsize 14 -fill 'rgb(64,65,44)' -antialias -font "docs/fonts/Arkitech Medium.ttf" -annotate -49+27 "$year" docs/img/wswlogo_$year.png
done

convert docs/img/wswlogo_print.png  -gravity North -pointsize 12 -fill 'rgb(64,65,44)' -antialias -font "docs/fonts/Arkitech Bold.ttf" -annotate -49+18 "HISTORY" -pointsize 8 -annotate -49+30 "1998 - 2022" docs/img/wswlogo_all.png
