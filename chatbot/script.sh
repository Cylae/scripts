#! /bin/bash

######################################
# title : SCRIPT                     #
# description : script for Webstart  #
# author : Alexandre Calais          #
# date : 161016                      #
# version : 1.0                      #
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
                SCRIPT WILL START IN 5 SECONDS
draw

# Progress bar

sleep 2
clear
echo -n '##                        (10%)'
sleep 0.5
clear
echo -n '####                      (20%)'
sleep 0.5
clear
echo -n '######                    (30%)'
sleep 0.5
clear
echo -n '########                  (40%)'
sleep 0.5
clear
echo -n '##########                (50%)'
sleep 0.5
clear
echo -n '############              (60%)'
sleep 0.5
clear
echo -n '##############            (70%)'
sleep 0.5
clear
echo -n '################          (80%)'
sleep 0.5
clear
echo -n '##################        (90%)'
sleep 0.5
clear
echo -n '####################      (100%)'
sleep 0.5
clear


ft_menu(){

#Display the menu

cat << "draw"
    ___ _____  _   ___  _____ ___   _    _   ___  ___  ___    ___
  ,' _//_  _/.' \ / o |/_  _// o |,' \ ,' \ / o |/ _/ / o | ,' _/
 _\ `.  / / / o //  ,'  / / /  ,'/ o |/ o |/ _,'/ _/ /  ,' _\ `.
/___,' /_/ /_n_//_/`_\ /_/ /_/`_\|_,' |_,'/_/  /___//_/`_\/___,'
          SCRIPT - WEBSTART - 1.0 - ALEXANDRE CALAIS
                        EXERCICE SHELL


draw

echo "Make a choice"
echo "1 - Check answers"
echo "2 - Ask me questions"
echo "3 - Exit the script"
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

echo "One of the biggest european server provider has been attack last week, which company is it?"
read OVH
clear

if [ $OVH = "OVH" ] || [ $OVH = "ovh" ]
  then echo "Yeah ! A 1Tbps DDoS attack, amazing no $firstname ?"
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
  echo "No ! You lived in a cave the past few weeks?"
}

# Blabla

ft_answer(){

echo "Ask me a question."

read question
if [[ $question == *"old"* ]]
  then echo "I'm 22 years old."
  
elif [[ $question == *"from"* ]]
  then echo "I'm from Paris."
elif [[ $question == *"color"* ]]
  then echo "My prefered color is the blue."
elif [[ $question == *"master"* ]]
  then echo "My master is Chuck Norris. hehe."
elif [[ $question == *"like me"* ]]
  then echo "No. I don't like you."
elif [[ $question == *"Donald Trump"* ]]
  then echo "Don't ask me what I think about my little Trumpy..."
elif [[ $question == *"smoke"* ]]
  then echo "No, I don't smoke. I'm not a locomotive."
else echo "I don't understand what you asked for."
fi
}

# Main

ft_menu

#if "1" run ft_question

if [ $menu = "1" ]
  then ft_question

# if "2" run ft_answer

elif [ $menu = "2" ]
  then ft_answer
  sleep 5

# else exit the script

else ft_exit_1
  fi
clear
ft_menu
