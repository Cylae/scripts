#! /bin/bash

######################################
# title : SCRIPT                     #
# description : script for Webstart  #
# author : Alexandre Calais          #
# date : 121016                      #
# version : 1.1                      #
# usage : sh script.sh               #
# usage 2 : chmod +x script.sh       #
#	   ./script.sh               #
######################################


clear
cat << "draw"
    ___ _____  _   ___  _____ ___   _    _   ___  ___  ___    ___
  ,' _//_  _/.' \ / o |/_  _// o |,' \ ,' \ / o |/ _/ / o | ,' _/
 _\ `.  / / / o //  ,'  / / /  ,'/ o |/ o |/ _,'/ _/ /  ,' _\ `. 
/___,' /_/ /_n_//_/`_\ /_/ /_/`_\|_,' |_,'/_/  /___//_/`_\/___,' 
          SCRIPT - WEBSTART - 1.0 - ALEXANDRE CALAIS
                        EXERCICE SHELL
		SCRIPT WILL START IN 10 SECONDS


draw

# Progress bar

echo -n '##                        (10%)\r'
sleep 1
echo -n '####                      (20%)\r'
sleep 1
echo -n '######                    (30%)\r'
sleep 1
echo -n '########                  (40%)\r'
sleep 1
echo -n '##########                (50%)\r'
sleep 1
echo -n '############              (60%)\r'
sleep 1
echo -n '##############            (70%)\r'
sleep 1
echo -n '################          (80%)\r'
sleep 1
echo -n '##################        (90%)\r'
sleep 1
echo -n '####################      (100%)\r'

echo -n '\n \n'

# Menu

echo "Make a choice"
echo "1 - Start the script"
echo "2 - Exit the script"
echo -n "Your choice > "
read menu

# If the choice is "1" the script will continue. If the answer is "2" the script will exit.

if [ $menu = "1" ]
  then
  clear

# First question

  echo -n "What is your firstname ? > "
  read firstname
  else

# Display exit message if "2".

    echo "See you soon ! Visit our website : http://ecole-webstart.com/"
  exit
  fi

clear

#Second question

echo -n "What is your lastname ? > "
read lastname

clear
echo "Okay $firstname $lastname ! Let's do this bro'"

#Third question

echo "So $firstname, you think you can handle this script ? > "
read answer_1

clear
if [ $answer_1 = "yes" ] || [ $answer_1 = "Yes" ]
  then echo "Yeah ? You're ready ? Let's go $prenom !"
  else

# Exit the script if the answer isn't "yes".

  echo "OK... See you !"
  exit
  fi

#Fourth question

echo "How old are you ? > "
read age
clear

if [ $age -ge "18" ]
  then echo "Woaaaaa !"
  else

# Exit the script if the age is < 18 and a lovely ASCII art <3

  echo "You still a kid, please return this computer to Daddy."
  cat << "draw2"
                                                                                      
                                                                                      
NNNNNNNN        NNNNNNNN     OOOOOOOOO     WWWWWWWW                           WWWWWWWW
N:::::::N       N::::::N   OO:::::::::OO   W::::::W                           W::::::W
N::::::::N      N::::::N OO:::::::::::::OO W::::::W                           W::::::W
N:::::::::N     N::::::NO:::::::OOO:::::::OW::::::W                           W::::::W
N::::::::::N    N::::::NO::::::O   O::::::O W:::::W           WWWWW           W:::::W 
N:::::::::::N   N::::::NO:::::O     O:::::O  W:::::W         W:::::W         W:::::W  
N:::::::N::::N  N::::::NO:::::O     O:::::O   W:::::W       W:::::::W       W:::::W   
N::::::N N::::N N::::::NO:::::O     O:::::O    W:::::W     W:::::::::W     W:::::W    
N::::::N  N::::N:::::::NO:::::O     O:::::O     W:::::W   W:::::W:::::W   W:::::W     
N::::::N   N:::::::::::NO:::::O     O:::::O      W:::::W W:::::W W:::::W W:::::W      
N::::::N    N::::::::::NO:::::O     O:::::O       W:::::W:::::W   W:::::W:::::W       
N::::::N     N:::::::::NO::::::O   O::::::O        W:::::::::W     W:::::::::W        
N::::::N      N::::::::NO:::::::OOO:::::::O         W:::::::W       W:::::::W         
N::::::N       N:::::::N OO:::::::::::::OO           W:::::W         W:::::W          
N::::::N        N::::::N   OO:::::::::OO              W:::W           W:::W           
NNNNNNNN         NNNNNNN     OOOOOOOOO                 WWW             WWW            
                                                                                      
                                                                                      
                                                                                      
draw2
  exit
  fi

# Fifth question

echo "Quelle était le troisième code de l'exercice de la semaine passée ?"
read exercice
clear

if [ $exercice != "42" ]

# Exit the script if the answer isn't "42".

  then echo "Ratééééé !"
  exit
  else
  echo "Bien joué $prenom ! "
  fi

# Another question...

echo "Un des plus grands provider de serveur s'est fait attaqué la semaine passée, de qui s'agit-il ?"
read OVH
clear

if [ $OVH = "OVH" ] || [ $OVH = "ovh" ]
  then echo "Eh oui ! Le bougre s'est prit une attaque d'1Tbps ! Incroyable non ?"
  else
  echo "Non ! Non mais tu suis l'actualité ou quoi ?"
  fi

# WTF IS GOING ON ?!

sleep 2
clear
sleep 5
echo "5"
sleep 1
echo "4"
sleep 1
echo "3"
sleep 1
echo "2"
sleep 1
echo "1"
sleep 1
echo "0"
sleep 1
echo "DESTRUCTION IMMINENTE"
sleep 1
clear
