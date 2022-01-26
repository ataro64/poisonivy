#!/bin/bash
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi
sleep 3
clear
#  Checks if required commands are installed.
echo "installing required commands."
sleep 2
echo -ne '#####                     (33%)\r'
sleep 4
echo -ne '#############             (66%)\r'
sleep 3
echo -ne '#######################   (100%)\r'
echo -ne '\n'
if ! [ -x "$(command -v git)" ]; then
  sudo bash -c 'apt-get -y install git >/dev/null 2>&1 & disown' >&2
  exit 1
fi
if ! [ -x "$(command -v curl)" ]; then
  sudo bash -c 'apt-get -y install curl >/dev/null 2>&1 & disown' >&2
  exit 1
fi
if ! [ -x "$(command -v figlet --help)" ]; then
  sudo bash -c 'apt-get -y install figlet >/dev/null 2>&1 & disown' >&2
  exit 1
fi
clear
sync
figlet -w 100 Welcome to PoisonIvy!
sleep 2 
clear
# menu 
figlet PoisonIvy
echo "Select an option";
echo "1. Checkra1n"
echo "2. Grapes"
echo "3. Mango"
echo "4. Exit from menu "
echo -n "Enter your menu choice [1-4]: "

# Running a forever loop using while statement
# This loop will run untill select the exit option.
# User will be asked to select option again and again
while :
do

# reading choice
read choice

# case statement is used to compare one value with the multiple cases.
case $choice in
  # Pattern 1
  1)  clear
      echo "Downloading and running checkra1n"
      sleep 3
      curl https://assets.checkra.in/downloads/linux/cli/x86_64/dac9968939ea6e6bfbdedeb41d7e2579c4711dc2c5083f91dced66ca397dc51d/checkra1n --output checkra1n
      chmod +x checkra1n
      sudo ./checkra1n;;
  # Pattern 2
  2)  echo "You have selected the option 2"
      echo "Selected Fruit is Grapes. ";;
  # Pattern 3
  3)  echo "You have selected the option 3"
      echo "Selected Fruit is Mango. ";;    
  # Pattern 4
  4)  echo "Quitting ..."
      exit;;
  # Default Pattern
  *) echo "invalid option";;
  
esac
clear
figlet PoisonIvy
echo "Select an option";
echo "1. Checkra1n"
echo "2. Grapes"
echo "3. Mango"
echo "4. Exit from menu "
echo -n "Enter your menu choice [1-4]: "
done
