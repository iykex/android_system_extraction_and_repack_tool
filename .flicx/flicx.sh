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
tul=android_system_extraction_and_repack_tool
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

CT="$(date +"%r")"
DT="$(date +"%b-%d-%Y")"
cecho B "" "    \e[7m\e[3mMenu" "                        \033[0;36m\e[3m|| Time : $CT"
cecho C "" "    \e[3mHost System : $HOSTNAME" "    \033[0;36m\e[3m|| Date : $DT"
echo
cecho Y "    \033[0mv - " "View Credits & info"
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
  PAGE
  echo -e "                        \033[0;34m "
  cecho P " ""    \e[4m\e[7m@Xpirt [XDA]"
  echo "    for : sdat2img 1.0 - img2sdat 1.2"
  echo "    check thread link below  >>"
  cecho P"" "    \033[0;33m\e[3m\e[4m*https://forum.xda-developers.com/android/software-hacking/how-to-conver-lollipop-dat-files-to-t2978952"
  echo
  echo
  echo
  cecho P " " "\e[3m "
  read -p "         Press enter key for next . . ."
  clear
  echo
  PAGE
  echo -e "                        \033[0;34m "
  cecho P " ""    \e[4m\e[7m@SuperR. [XDA]"
  echo "    for : Some binaries"
  echo "    check profile link below  >>"
  cecho P"" "    \033[0;33m\e[3m\e[4m*https://forum.xda-developers.com/member.php?u=5787964"
  echo
  echo
  echo
  cecho P " " "\e[3m "
  read -p "         Press enter key for next . . ."
  clear
  echo
  PAGE
  echo -e "                        \033[0;34m "
  cecho P " ""    \e[4m\e[7m@Pom Kritsada [MTK THAI Developers]"
  echo "    for : file_context.bin conversion"
  echo "    check video link below  >>"
  cecho P"" "    \033[0;33m\e[3m\e[4m*https://www.youtube.com/watch?v=Tw5f4iLUYhc"
  echo
  echo
  echo
  cecho P " " "\e[3m "
  read -p "         Press enter key to continue . . ."
  clear
  echo
  PAGE
  echo -e "                        \033[0;34m "
  cecho P " ""    \e[4m\e[7m#AMD [FACEBOOK]"
  echo "    Android Matrix Development"
  echo "    check group link below  >>"
  cecho P"" "    \033[0;33m\e[3m\e[4m*https://web.facebook.com/groups/1024872487548231/"
  echo
  echo
  echo
  cecho P " " "\e[3m "
  read -p "         Press enter key for next . . ."
    clear
  echo
  PAGE
  echo -e "                        \033[0;34m "
  cecho P " ""    \e[4m\e[7mNana Yaa [Jennie]"
  echo "    for her time & motivation"
  echo
  echo
  echo
  cecho P " " "\e[3m "
  read -p "         Press enter key for next . . ."
  echo
  clear
  echo
  PAGE
  echo -e "                        \033[0;33m "
  echo -e "             \e[3m[ THANKS FOR VIEWING ]"
  echo -e "             \e[3m[  OUR CREDIT !!! ]"
  echo
  sleep 2.0;
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
