 #!/bin/bash
printf '\e[8;35;80t]'
#
# Custom build script
# Copyright © 2017, Nana Iyke Quame "iyke"
# <nanaquameallday@gmail.com>
#
#Android_Matrix_Development
#DroidPeepz™ Inc
#
# NOTE : This Is Meant For  The Good & Ease Of Kernel Development,
#  - Please You Are Free To Edit And Make It Better, But DO NOT STEAL !
#  -
#
#--------------------------

user=$(echo "$(whoami | gawk '{ print $1 }')")
tul=Android_System_Extractrion_and_Repack_Tool
hm=home
dsk=Desktop

#file_context_zone
FILCX(){
clear
echo -e "                        \033[0;34m "
cecho P"" "                     \e[4m*||_http://www.droidpeepz.xyz_||*"
echo
echo
cecho P ""  "                     \e[7m================================="
cecho C ""  "            \e[7m===!! Android System Extraction/Repack Tool. !!==="
cecho G "" "                                     \e[7mFor"
cecho C "" "                     \e[7m*..MediaTek & Qualcomm Devices..*"
echo
cecho P "" "                   \e[7m*||_File_contexts.bin Convert Zone_||*"
echo
echo "                     ========*****************========"
echo "                               Credit Goes To:"
cecho C "" "            	    cofface@cofface.com - source script  "
cecho B "" "             	     Pom Kritsada @MTK THAI Developers  "
echo "                     ========*****************========"
echo


cecho B "" "    \e[7mMenu"    "                        || Start Time : "$(date +%b-%d-%Y-%H:%M)''
echo
cecho Y "    v - " "View Credits & info"
echo
cecho C "    c - " "Convert"
echo
cecho G "    r - " "Revert "
echo
cecho R "    h - " "go to home"
echo
echo
}

#MENU
EXT_MAIN(){
while :
do

  clear
  FILCX
  read -p "           Enter option: " CHOICE
  case "$CHOICE" in
			V|v) V_CREDIT;;
			C|c) convert;;
			R|r) revert;;
			H|h ) go_back;;
				*) cecho R "" "     Invalid option"; sleep 0.3; continue;;
	esac

done
}

#credit & info
V_CREDIT(){
  clear
  echo
  echo " adding soon"
  echo
  read -p                 "Press enter key to continue . . ."
  FILCX
}

go_back(){
echo
exit
cd ..
if [ -f  Xtrakt* ]
then
chmod +x Xtrakt
./Xtrakt*
fi
}

PAGE(){
clear
echo -e "                        \033[0;34m "
cecho P"" "                     \e[4m*||_http://www.droidpeepz.xyz_||*"
echo
echo
cecho P ""  "                     \e[7m================================="
cecho C ""  "            \e[7m===!! Android System Extraction/Repack Tool. !!==="
cecho G "" "                                     \e[7mFor"
cecho C "" "                     \e[7m*..MediaTek & Qualcomm Devices..*"
echo
echo
echo
}

#convert
convert(){
  clear
  PAGE
  echo -e "                        \033[0;34m "
  echo " Please wait"
  sleep 1.0;
   if [ -f /$hm/$user/$dsk/$tul/file_context_zone/convert/file_contexts* ]
	then
		echo -e "  \033[0;31m "
		echo "            File." "file_context already exist in folder; "
		echo "            continuing will be overwrite it !!! "
		echo
		read -p "             to continue, press Enter ... "
		 cd ..
 ( tools/lib64/./sefcontext -o /$hm/$user/$dsk/$tul/file_context_zone/convert/file_contexts /$hm/$user/$dsk/$tul/file_context_zone/file_contexts.bin > /$hm/$user/$dsk/$tul/file_context_zone/nul ) >> context-log.txt
 cd .flicx
	else
	PAGE
  cd ..
 ( tools/lib64/./sefcontext -o /$hm/$user/$dsk/$tul/file_context_zone/convert/file_contexts /$hm/$user/$dsk/$tul/file_context_zone/file_contexts.bin > /$hm/$user/$dsk/$tul/file_context_zone/nul ) >> context-log.txt
cd .flicx
 PAGE
echo  ""
 sleep 2.0;
echo -e "                        \033[0;34m "
echo
echo "                !! DONE !!"
echo
read -p                 "Press enter key to continue . . ."
echo
fi
}

#revert
revert(){
  clear
  PAGE
  echo -e "                        \033[0;34m "
  echo " Please wait"
  sleep 1.0;
   if [ -f /$hm/$user/$dsk/$tul/file_context_zone/revert/file_contexts.bin* ]
	then
		echo -e "  \033[0;31m "
		echo "            File." "file_context.bin already exist in folder; "
		echo "            continuing will be overwrite it !!! "
		echo
		 read -p "             to continue, press Enter ... "
		 cd ..
 ( tools/lib64/./sefcontext -o /$hm/$user/$dsk/$tul/file_context_zone/revert/file_contexts.bin /$hm/$user/$dsk/$tul/file_context_zone/convert/file_contexts > /$hm/$user/$dsk/$tul/file_context_zone/nul ) >> context-log.txt
 cd .flicx
	else
	PAGE
  cd ..
 ( tools/lib64/./sefcontext -o /$hm/$user/$dsk/$tul/file_context_zone/revert/file_contexts.bin /$hm/$user/$dsk/$tul/file_context_zone/convert/file_contexts > /$hm/$user/$dsk/$tul/file_context_zone/nul ) >> context-log.txt
cd .flicx
 PAGE
echo  ""
 sleep 2.0;
echo -e "                        \033[0;34m "
echo
echo "                !! DONE !!"
echo
read -p                 "Press enter key to continue . . ."
echo
fi
}


#COLOR
#Credit goes to @Matrix for his color codes
#USAGE: cecho TYPE=R|G|Y|B|P|C|W "msg1" "color_msg2" "msg3"
cecho ()
   {
   #Case didn't work out for me in cygwin
   if [ "$1" == "R" ]
then
  echo -e "$2""\033[0;91m$3\033[0m""$4" # Red
elif  [ "$1" == "G" ]
then
  echo -e "$2""\033[0;92m$3\033[0m""$4" # Green
elif  [ "$1" == "Y" ]
then
  echo -e "$2""\033[0;93m$3\033[0m""$4" # Yellow
elif  [ "$1" == "B" ]
then
  echo -e "$2""\033[0;94m$3\033[0m""$4" # Blue
elif  [ "$1" == "P" ]
then
  echo -e "$2""\033[0;95m$3\033[0m""$4" # Purple
elif  [ "$1" == "C" ]
then
  echo -e "$2""\033[0;96m$3\033[0m""$4" # Cyan
elif  [ "$1" == "W" ]
then
  echo -e "$2""\033[0;97m$3\033[0m""$4" # White
 fi
}

#EXTRA_COLOR_OPTIONS
blue='\033[0;34m'
cyan='\033[0;36m'
yellow='\033[0;33m'
red='\033[0;31m'
nocol='\033[0m'


#DEPLOYING function
EXT_MAIN
