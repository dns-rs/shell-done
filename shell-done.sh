#!/bin/bash

# Rename first, second, third, fourth to the scripts you wish to monitor
# If you wish to add more scripts to the list, just follow the pattern
shellScripts=('first.sh' 'second.sh' 'third.sh' 'fourth.sh')
shellScriptsLength=${#shellScripts[@]}
indexCounter=0

while ((indexCounter < shellScriptsLength)) 
  do
    if pgrep -x ${shellScripts[indexCounter]} >/dev/null
      then
        echo "${shellScripts[indexCounter]} is running"
        sleep 2
        indexCounter=0
    else
      let "indexCounter+=1"
    fi
done

echo "Non of the above listed scripts are running, executing script2run.sh now"
sh script2run.sh