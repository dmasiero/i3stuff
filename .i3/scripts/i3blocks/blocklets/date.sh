#!/bin/sh
#~/scripts/i3blocks/blocklets/date.sh

case $BLOCK_BUTTON in
#  2)date '+%a %b %d, %Y' ;;
  1)gsimplecal ;;
  3)galculator ;;

esac

date '+%a %b %d, %Y'
