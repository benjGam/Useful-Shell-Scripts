# /bin/sh
read -p "Commit message prefix: " preffix
while true
do
  read -p "Message: " msg
  if [ "$msg" == "exit" ]
  then
    exit 0
  fi

  git commit -am "$preffix: $msg"
done