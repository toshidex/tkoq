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
white="\e[0;1;39m"
gray="\e[0;34m"
lgreen="\e[0;33m"
rosa="\e[0;31m"
rstclr="\e[m"

computerpts=0
playerpts=0
index=0

queen="$blue┏━┓\n┃┓┃\n$rstclr$gray┗┻┛$rstclr"
king="$blue╻┏\n┣┻┓$rstclr\n$gray╹ ╹$rstclr"

cards=( "$blue┏━┓ \t ╻┏ \t ╻┏ $rstclr
 $blue┃┓┃ \t ┣┻┓ \t ┣┻┓ $rstclr
 $gray┗┻┛ \t ╹ ╹ \t ╹ ╹ $rstclr"

"$blue╻┏ \t ┏━┓ \t ╻┏ $rstclr
 $blue┣┻┓ \t ┃┓┃ \t ┣┻┓ $rstclr
 $gray╹ ╹ \t ┗┻┛ \t ╹ ╹ $rstclr"

"$blue╻┏ \t ╻┏ \t ┏━┓ $rstclr
 $blue┣┻┓ \t ┣┻┓ \t ┃┓┃ $rstclr
 $gray╹ ╹ \t ╹ ╹ \t ┗┻┛ $rstclr"

#CARDS FACE DOWN#
"$white╻ ╻ \t ╻ ╻ \t ╻ ╻ $rstclr
$white ╺╋╸ \t ╺╋╸ \t ╺╋╸ $rstclr
$white ╹ ╹ \t ╹ ╹ \t ╹ ╹ $rstclr"

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
	echo -e "\nWelcome to Tkoq [ Two King One Queen ] - v0.0.1"
	echo -e "\n* Istructions: "
	echo -e "$queen == Queen Cards"
	echo -e "$king == King Cards"
	
	echo -e "\nIf you find the Queen you won else you lose."
	echo -e "\n*******************************************"
	echo -e "\nPress a key for continue..."
	read -s -n 1 key
	
	[[ -z $key ]] && return 100
}

checkpts() {

	echo "*******************************************"
	echo -e "* Player:   [$green $playerpts $rstclr]\t\t\t  *"
	echo -e "* Computer: [$red $computerpts $rstclr]\t\t\t  *"
	echo -e "*******************************************\n"
}


shuffle_cards(){
	
	local second=0.5
	for i in $(seq 0 4); do
	
		index=$((RANDOM%4))
		if [[ $index == 3 ]]; then
			clear
			checkpts
			index=$((--index))
			echo -e " ${cards[$index]}"
		elif [[ $index == 2 ]]; then
			clear
			checkpts
			index=$((--index))
			echo -e " ${cards[$index]}"
		elif [[ $index == 1 ]]; then
			clear
			checkpts
			index=$((RANDOM%2))
			echo -e " ${cards[$index]}"
		elif [[ $index == 0 ]]; then
			clear
			checkpts
                        index=$((RANDOM%3))
			echo -e " ${cards[$index]}"
		fi
		
		second=$(echo "0$(echo "$second-0.1" | bc )")
		sleep $second
	done

}

print_result() {

	if [[ $key == $index ]]; then
		clear
		checkpts
	
		echo -e " ${cards[$((key+7))]}"
		playerpts=$((++playerpts))
		echo -e "\n\t[ YOU WIN ]"
		sleep 0.5
	else
		clear
		checkpts

		echo -e " ${cards[$((key+4))]}"
		computerpts=$((++computerpts))
		echo -e "\n\t[ YOU LOSE ]"
		sleep 0.5
	fi


}

print_result() {

	 if [[ $key == $index ]]; then
                clear
                checkpts

                echo -e " ${cards[$((key+7))]}"
                playerpts=$((++playerpts))
                echo -e "\n\t[ YOU WIN ]"
                sleep 0.5
        else
                clear
                checkpts

                echo -e " ${cards[$((key+4))]}"
                computerpts=$((++computerpts))
                echo -e "\n\t[ YOU LOSE ]"
                sleep 0.5
        fi



}


choose_cards() {
	
	clear
	checkpts
	echo -e " ${cards[3]}"
	echo -e "[ 0 ] \t[ 1 ] \t[ 2 ]"
	echo -e "\nChoose your cards [0][1][2]: "
	read -s -n1 key
	
	print_result
}

prestart_tkoq() {
	
	clear
	checkpts
	echo -e "There are three cards..."
	echo -e "\n ${cards[3]}"
	echo -e "\nAre you ready to play? [y/n]"
	read -s -n 1 key
	
	if [[ $key == "y" || $key == "Y" ]]; then
		shuffle_cards
		choose_cards
		
		until [[ ! false ]]; do
			shuffle_cards
		        choose_cards
	
			if [[ $playerpts == 3 || $computerpts == 3 ]]; then print_result; exit 0; fi
		done
	else
		exit 0
	fi
}

load_tkoq
prestart_tkoq
