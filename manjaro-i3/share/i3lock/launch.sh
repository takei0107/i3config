#!/bin/sh

BLANK='#00000000'
CLEAR='#00000000'
#DEFAULT='#404040cc'
DEFAULT='#00000000'
TEXT='#00ff00ee'
WRONG='#ff3333aa'
VERIFYING='#bb00bbbb'
KEY='#0080ffaa'

i3lock \
--insidever-color=$CLEAR     \
--ringver-color=$VERIFYING   \
\
--insidewrong-color=$CLEAR   \
--ringwrong-color=$WRONG     \
\
--inside-color=$BLANK        \
--ring-color=$DEFAULT        \
--line-color=$BLANK          \
--separator-color=$DEFAULT   \
\
--verif-color=$TEXT          \
--wrong-color=$TEXT          \
--time-color=$TEXT           \
--date-color=$TEXT           \
--layout-color=$TEXT         \
--keyhl-color=$KEY         \
--bshl-color=$KEY          \
\
--blur 8                     \
--clock                      \
--indicator                  \
--time-str="%H:%M:%S"        \
--date-str="%Y-%m-%d"       \
--keylayout 1                \
--ring-width=8.0                \
--time-size=50 \
