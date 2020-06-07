function user_input {
  echo "How many files there are in current directory?"
  read user_answer 
}

function read_user_answer {
  user_input
  while ! [[ $user_answer =~ ^[0-9]+$ ]]
  do
    echo "$user_answer is not a number. Write coorect number."
    user_input
  done
}

echo "In this simple game you must guess how many files in current directory."
correct_answer=$(find . -maxdepth 1 -type f | wc -l)
read_user_answer

while [[ $user_answer -ne $correct_answer ]]
do
  if [[ $user_answer -gt $correct_answer ]]
  then
    echo "Number of files is less than $user_answer"
  else
    echo "Number of files is more than $user_answer"
  fi
  read_user_answer
done

echo "Congratulations!!! Number of files in directory is $user_answer"
