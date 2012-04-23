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
cards=( "\e[0;1;34;94m┏━┓\e[m\n\e[0;1;34;94m┃┓┃\e[m\n\e[0;34m┗┻┛\e[m" "\n\e[0;1;34;94m╻┏\e[m\n\e[0;1;34;94m┣┻┓\e[m\n\e[0;34m╹\e[m \e[0;34m╹\e[m" )




#Init Function

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



load_tkoq

