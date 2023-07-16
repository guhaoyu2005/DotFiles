#!/bin/sh

# resolution height
h=$(xrandr --current | grep '*' | uniq | awk '{print $1}' | cut -d 'x' -f2)

if [ "$h" -le 1200 ]; then
    # 1k
    echo "x.org 1k optimized"
    xrdb ~/config/DotFiles/x.org/.Xresources.1k
elif [ "$h" -gt 1200 ] && [ "$h" -le 1600 ]; then
    # 2k
    echo "x.org 2k optimized"
    xrdb ~/config/DotFiles/x.org/.Xresources.2k
elif [ "$h" -gt 1600 ] && [ "$h" -le 2400 ]; then
    # 4k
    echo "x.org 4k optimized"
    xrdb ~/config/DotFiles/x.org/.Xresources.4k
else
    # 5k
    echo "x.org 5k+ optimized"
    xrdb ~/config/DotFiles/x.org/.Xresources.5k
fi

