#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SAY=$DIR/say

TEXT="You should get up now! Go to walk Huozhe! Go running! Begin your day with lots of energy! Go Go Go!"
echo $TEXT
$SAY -s 120 "$TEXT"
