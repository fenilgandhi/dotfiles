#!/usr/bin/env bash

icon="$HOME/.i3/lock.png"
tmpbg='/tmp/screen.png'

scrot "$tmpbg"
convert $tmpbg -scale 10% -scale 1000% $tmpbg                  # Pixelate
convert $tmpbg $icon -gravity center -composite -matte $tmpbg   # Add icon

i3lock -i "$tmpbg" 			\
-k --indicator 				\
--linecolor=00000000		\
--ringcolor=000000ff		\
--ringvercolor=000000ff	 	\
--ringwrongcolor=000000ff	\
--insidecolor=00000000		\
--insidevercolor=6060cfff	\
--insidewrongcolor=df0000af \
--keyhlcolor=6060cfff		\
--bshlcolor=f51f55ff		\
--separatorcolor=00000000	\
--textcolor=ffffffff		\
--datecolor=ffffffff		\
--indpos="w/2:h/2"			\
--timepos="w/2-200:h/2-200"	\
--datepos="w/2-200:h/2+20"	\
--datestr='%A, %m %Y'		\
--timecolor=ffffffff		\
--ring-width=80				\
--radius=130				\
--veriftext="Verifying…"  	