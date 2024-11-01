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

  if [ "$msg" == "gst" ]
  then
    git status
    read -n 1 -p "Waiting for input"
    echo ""
  fi

  git commit -am "$preffix: $msg"
  sleep 1

  if [ "$clearEnabled" != 'n' -a "$clearEnabled" != 'N' ]
  then
    clear
  fi
done