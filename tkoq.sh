#!/bin/bash

###############################################################################
# @Author : Ennio Giliberto aka Lightuono / Toshidex
# @Name : Tkoq ( Two King One Queen )
# @Version: 0.0.1
# @Copyright : 2012
# @Site : http://www.toshidex.org
# @License : GNU AGPL v3 http://www.gnu.org/licenses/agpl.html
###############################################################################

#Init Variables
blue="\e[0;1;34m"
green="\e[0;1;32m"
red="\e[0;1;31m"
gray="\e[0;34m"
lgreen="\e[0;33m"
rosa="\e[0;31m"
rstclr="\e[m"
cards=( " $blue┏━┓ \t ╻┏ \t ╻┏ $rstclr
 $blue┃┓┃ \t ┣┻┓ \t ┣┻┓ $rstclr
 $gray┗┻┛ \t ╹ ╹ \t ╹ ╹ $rstclr"

"$blue╻┏ \t ┏━┓ \t ╻┏ $rstclr
 $blue┣┻┓ \t ┃┓┃ \t ┣┻┓ $rstclr
 $gray╹ ╹ \t ┗┻┛ \t ╹ ╹ $rstclr"

"$blue╻┏ \t ╻┏ \t ┏━┓ $rstclr
 $blue┣┻┓ \t ┣┻┓ \t ┃┓┃ $rstclr
 $gray╹ ╹ \t ╹ ╹ \t ┗┻┛ $rstclr"

#CARDS FACE DOWN#
"$blue╻ ╻ \t ╻ ╻ \t ╻ ╻ $rstclr
$blue ╺╋╸ \t ╺╋╸ \t ╺╋╸ $rstclr
$gray ╹ ╹ \t ╹ ╹ \t ╹ ╹ $rstclr"

#CARDS LOSE#
"$red┏━┓$rstclr \t $blue╻┏ \t ╻┏ $rstclr
 $red┃┓┃$rstclr \t $blue┣┻┓ \t ┣┻┓ $rstclr
 $rosa┗┻┛$rstclr \t $gray╹ ╹ \t ╹ ╹ $rstclr"

"$blue╻┏$rstclr \t $red┏━┓$rstclr \t $blue╻┏ $rstclr
 $blue┣┻┓$rstclr \t $red┃┓┃$rstclr \t $blue┣┻┓ $rstclr
 $gray╹ ╹$rstclr \t $rosa┗┻┛$rstclr \t $gray╹ ╹ $rstclr"

"$blue╻┏ \t ╻┏$rstclr \t $red┏━┓ $rstclr
 $blue┣┻┓ \t ┣┻┓$rstclr \t $red┃┓┃ $rstclr
 $gray╹ ╹ \t ╹ ╹$rstclr \t $rosa┗┻┛ $rstclr"

#CARDS VICTORY#
"$green┏━┓$rstclr \t $blue╻┏ \t ╻┏ $rstclr
 $green┃┓┃$rstclr \t $blue┣┻┓ \t ┣┻┓ $rstclr
 $lgreen┗┻┛$rstclr \t $gray╹ ╹ \t ╹ ╹ $rstclr"

"$blue╻┏$rstclr \t $green┏━┓$rstclr \t $blue╻┏ $rstclr
 $blue┣┻┓$rstclr \t $green┃┓┃$rstclr \t $blue┣┻┓ $rstclr
 $gray╹ ╹$rstclr \t $lgreen┗┻┛$rstclr \t $gray╹ ╹ $rstclr"

"$blue╻┏ \t ╻┏$rstclr \t $green┏━┓ $rstclr
 $blue┣┻┓ \t ┣┻┓$rstclr \t $green┃┓┃ $rstclr
 $gray╹ ╹ \t ╹ ╹$rstclr \t $lgreen┗┻┛ $rstclr"
)


#Init Functios

load_tkoq() {

	clear
	echo -e "*******************************************"
	echo -e "\nWelcome to Tkoq [ Two King One Queen ]"
	echo -e "\n* Istructions: "
	echo -e "${cards[0]} == Queen Cards"
	echo -e "${cards[1]} == King Cards"
	
	echo -e "*******************************************"
	echo -e "\nPress a key for continue..."
	read -s -n 1 key
	
	[[ -z $key ]] && return 100
}

prestart_tkoq() {
	
	clear
	echo -e "*******************************************"
	echo -e "${cards[0]} \n ${cards[1]} \n ${cards[2]} \n ${cards[3]} \n ${cards[4]} \n ${cards[5]} \n ${cards[6]} \n ${cards[7]} \n ${cards[8]} \n ${cards[9]}" 




}


load_tkoq
prestart_tkoq
