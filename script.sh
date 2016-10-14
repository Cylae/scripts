#! /bin/bash

######################################
# title : SCRIPT                     #
# description : script for Webstart  #
# author : Alexandre Calais          #
# date : 121016                      #
# version : 1.1                      #
# usage : sh script.sh               #
# usage 2 : chmod +x script.sh       #
#          ./script.sh               #
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


ft_menu(){

#Display the menu

echo "Make a choice"
echo "1 - Start the script"
echo "2 - Exit the script"
echo -n "Your choice > "
read menu
}

ft_question(){

# Questions

# First question

  echo -n "What is your firstname ? > "
  read firstname
  clear

# Second question

  echo -n "What is your lastname ? > "
  read lastname
  clear

clear
echo "Okay $firstname $lastname ! Let's do this bro'"

#Third question

echo "So $firstname, you think you can handle this script ? > "
read answer_1

clear
if [ $answer_1 = "yes" ] || [ $answer_1 = "Yes" ]
  then echo "Yeah ? You're ready ? Let's go $firstname !"
  else
  ft_exit_2
  fi

#Fourth question

echo "How old are you ? > "
read age
clear

if [ $age -ge "18" ]
  then echo "Woaaaaa !"
  else
  ft_exit_3
  fi

# Fifth question

echo "What was the answer of the exercice of the last week ?"
read exercice
clear

if [ $exercice != "42" ]
  then echo "FAAAAAAILED !"
  exit
  else
  ft_exit_4
  fi

# Another question

echo "One the biggest european server provider has been attack last week,"
read OVH
clear

if [ $OVH = "OVH" ] || [ $OVH = "ovh" ]
  then echo "Eh oui ! Le bougre s'est prit une attaque d'1Tbps ! Incroyable non $firstname ?"
  sleep 3
  else
  ft_exit_5
  fi
}

ft_exit_1(){
    echo "See you soon ! Visit our website : http://ecole-webstart.com/"
  exit
}

ft_exit_2(){
  echo "OK... See you !"
  exit
}

ft_exit_3(){
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

}

ft_exit_4(){
  echo "Well done $prenom ! "
}

ft_exit_5(){
  echo "Non ! Non mais tu suis l'actualité ou quoi ?"
}


# Main

ft_menu
if [ $menu = "1" ]
  then ft_question
  else ft_exit_1
  fi
clear
ft_menu
