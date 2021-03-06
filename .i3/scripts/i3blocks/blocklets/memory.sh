#!/bin/sh
#~/scripts/i3blocks/blocklets/memory.sh
# show total and used memory by Derrick Cope

USED="$(free -h | awk '/^Mem:/{print $3}')"
TOTAL="$(free -h | awk '/^Mem:/{print $2}')"
CACHED="$(free -h | awk '/^Mem:/{print $6}')"
FREE="$(free -h | awk '/^Mem:/{print $4}')"
UNUSED="$[$CACHED + $FREE]"

case $BLOCK_BUTTON in
  3) echo $USED/$TOTAL ;;
  2) echo $UNUSED/$TOTAL  ;;
  1)
esac

echo $USED
