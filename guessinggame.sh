function read_user_answer {
  echo "How many files there are in current directory?"
  read user_answer
}

echo "In this simple game you must guess how many files in current directory."
correct_answer=$(ls | wc -l)
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
