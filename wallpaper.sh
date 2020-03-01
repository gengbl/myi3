#/bin/bash

wpnames=(`ls ~/图片/wallpapers/*.jpg`)
N=${#wpnames[@]}
wp=$[RANDOM%$N+1]
feh --bg-scale ${wpnames[$wp]}

