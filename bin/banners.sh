for year in 2024
do
    convert docs/img/wswlogo_print.png -gravity NorthWest -pointsize 14 -fill 'rgb(64,65,44)' -antialias -font "docs/fonts/Arkitech Medium.ttf" -gravity NorthWest -annotate +118+27 "$year" docs/img/wswlogo_$year.png
done

convert docs/img/wswlogo_print.png -gravity NorthWest -pointsize 12 -fill 'rgb(64,65,44)' -antialias -font "docs/fonts/Arkitech Bold.ttf" -annotate +112+18 "HISTORY" -pointsize 8 -annotate +112+30 "1998 - 2023" docs/img/wswlogo_all.png
