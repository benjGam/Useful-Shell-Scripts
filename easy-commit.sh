# /bin/sh
read -n 1 -p "Clear between each commit ? [Y/n]: " clearEnabled
read -e -p "Commit message prefix: " preffix
while true
do
  read -e -p "Commit message: " msg
  if [ "$msg" == "exit" ]
  then
    exit 0
  fi
  if [ "$clearEnabled" != 'n' -a "$clearEnabled" != 'N' ]
  then
    clear
  fi

  git commit -am "$preffix: $msg"
done