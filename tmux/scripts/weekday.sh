#!/bin/bash

# Get day of the week
day_num=$(date +%w)

# Map to Chinese
case $day_num in
  0) day_cn="星期日" ;;
  1) day_cn="星期一" ;;
  2) day_cn="星期二" ;;
  3) day_cn="星期三" ;;
  4) day_cn="星期四" ;;
  5) day_cn="星期五" ;;
  6) day_cn="星期六" ;;
esac

# Output the result
echo "$day_cn"
