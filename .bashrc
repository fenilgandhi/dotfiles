#
# ~/.bashrc
#

[[ $- != *i* ]] && return

colors() {
	local fgc bgc vals seq0

	printf "Color escapes are %s\n" '\e[${value};...;${value}m'
	printf "Values 30..37 are \e[33mforeground colors\e[m\n"
	printf "Values 40..47 are \e[43mbackground colors\e[m\n"
	printf "Value  1 gives a  \e[1mbold-faced look\e[m\n\n"

	# foreground colors
	for fgc in {30..37}; do
		# background colors
		for bgc in {40..47}; do
			fgc=${fgc#37} # white
			bgc=${bgc#40} # black

			vals="${fgc:+$fgc;}${bgc}"
			vals=${vals%%;}

			seq0="${vals:+\e[${vals}m}"
			printf "  %-9s" "${seq0:-(default)}"
			printf " ${seq0}TEXT\e[m"
			printf " \e[${vals:+${vals+$vals;}}1mBOLD\e[m"
		done
		echo; echo
	done
}

[[ -f ~/.extend.bashrc ]] && . ~/.extend.bashrc

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

alias cls='clear'
alias lol="exit;exit;"
alias bye='shutdown -P --no-wall 00'
alias subl='subl3'
alias python='python3'
alias chrome='google-chrome-stable'
alias editconfig='subl ./.i3/config'

export PYTHONSTARTUP=~/.pythonrc
export EDITOR=subl

random1() {
echo '************************************************************************************************************************************'
echo '**                                                                                                                                **'
echo '**  ,gggggggggggggg                                                                                                               **'
echo '** dP""""""88""""""                                 ,dPYb,                                                   8I  ,dPYb,           **'
echo '** Yb,_    88                                       IP"`Yb                                                   8I  IP"`Yb           **'
echo '**  `""    88                                  gg   I8  8I                                                   8I  I8  8I      gg   **'
echo '**      ggg88gggg                              ""   I8  8"                                                   8I  I8  8"      ""   **'
echo '**         88   8     ,gggg,gg   ,ggg,,ggg,    gg   I8 dP        ,gggg,gg    ,gggg,gg   ,ggg,,ggg,     ,gggg,8I  I8 dPgg,    gg   **'
echo '**         88        dP"  "Y8I  ,8" "8P" "8,   88   I8dP        dP"  "Y8I   dP"  "Y8I  ,8" "8P" "8,   dP"  "Y8I  I8dP" "8I   88   **'
echo '**   gg,   88       i8"    ,8I  I8   8I   8I   88   I8P        i8"    ,8I  i8"    ,8I  I8   8I   8I  i8"    ,8I  I8P    I8   88   **'
echo '**    "Yb,,8P      ,d8,   ,d8b,,dP   8I   Yb,_,88,_,d8b,_     ,d8,   ,d8I ,d8,   ,d8b,,dP   8I   Yb,,d8,   ,d8b,,d8     I8,_,88,_ **'
echo '**      "Y8P"      P"Y8888P"`Y88P"   8I   `Y88P""Y88P""Y88    P"Y8888P"888P"Y8888P"`Y88P"   8I   `Y8P"Y8888P"`Y888P     `Y88P""Y8 **'
echo '**                                                                   ,d8I"                                                        **'
echo '**                                                                 ,dP"8I                                                         **'
echo '**                                                                ,8"  8I                                                         **'
echo '**             ╦ ╦  ┌─┐┌─┐┌─┐┌┬┐  ╔╗ ┬─┐┌─┐  ┬┬┬                  I8   8I                                                         **'
echo '**             ║ ║  │ ┬│ ││ │ ││  ╠╩╗├┬┘│ │  │││                  `8, ,8I                                                         **'
echo '**             ╚═╝  └─┘└─┘└─┘─┴┘  ╚═╝┴└─└─┘  ooo                   `Y8P"                                                          **'
echo '**                                                                                                                                **'
echo '************************************************************************************************************************************'
echo -e '\n'
}


random2() {
echo '***************************************************************************************************'
echo '**                                                                                               **'
echo '**      8 88888888888           .8.            b.             8     8 8888 8    8888             **'
echo '**      8 8888                 ..88.           888o.          8     8 8888 8    8888             **'
echo '**      8 8888                :88.88.          Y88888o.       8     8 8888 8    8888             **'
echo '**      8 8888               . `88.88.         .`Y888888o.    8     8 8888 8    8888             **'
echo '**      8 8888              .8. `88.88.        8o. `Y888888o. 8     8 8888 8    8888             **'
echo '**      8 888888888        .8`8. `88.88.       8`Y8o. `Y88888o8     8 8888 8    8888             **'
echo '**      8 8888            .8` `8. `88.88.      8   `Y8o. `Y8888     8 8888 8    8888             **'
echo '**      8 8888           .8`   `8. `88.88.     8      `Y8o. `Y8     8 8888 8    8888             **'
echo '**      8 8888          .8888`8888. `88.88.    8         `Y8o.`     8 8888 8    8888             **'
echo '**      8 8888          8`       `8. `88.88.   8            `Yo     8 8888 8    888888888888     **'
echo '**                                                                                               **'
echo '***************************************************************************************************'
}