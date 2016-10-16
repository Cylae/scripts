#! /bin/bash

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
else echo "I don't understand what you asked for."
fi
