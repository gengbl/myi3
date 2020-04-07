#/bin/bash

wpnames=(`ls ~/Pictures/wallpapers/*.jpg`)
N=${#wpnames[@]}
wp=$[RANDOM%$N+1]
feh --bg-scale ${wpnames[$wp]}

