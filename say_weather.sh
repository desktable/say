#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SAY=$DIR/say

DATE=`date +"%A, %B %d"`
TEXT="Today is: $DATE"
echo $TEXT
$SAY -s 120 "$TEXT"

WEATHER="`$DIR/weather.py -f1 07310`"
COND=`echo "${WEATHER}" | tail -1 | cut -d: -f2 | sed 's/\//, /'`
HIGH=`echo "${WEATHER}" | tail -3 | head -1 | grep -oP '\+?[0-9]+'`
LOW=`echo "${WEATHER}" | tail -2 | head -1 | grep -oP '\+?[0-9]+'`
HIGHC=`echo "($HIGH - 32.0) * 5.0 / 9.0" | bc `
LOWC=`echo "($LOW - 32.0) * 5.0 / 9.0" | bc `
#TEXT="Today's weather is: $COND, $LOW to $HIGH degrees Fahrenheit, $LOWC to $HIGHC degrees Celsius."
TEXT="Today's weather is: $COND, $LOWC to $HIGHC degrees Celsius."
echo $TEXT
$SAY -s 120 "$TEXT"

TEXT="Again, $TEXT"
echo $TEXT
$SAY -s 120 "$TEXT"

TEXT="Have a good day!"
echo $TEXT
$SAY -s 120 "$TEXT"
