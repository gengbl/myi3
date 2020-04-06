#/bin/bash

wpnames=(`ls ~/Pictures/wallpapers/*.jpg`)
N=${#wpnames[@]}
wp=$[RANDOM%$N+1]
feh --bg-fill ${wpnames[$wp]}

