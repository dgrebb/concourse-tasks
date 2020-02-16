#!/bin/bash
echo 'what the fuck'
ls -la
echo "${ROOT_FOLDER}"
props="bluegreen/keyval.properties"
if [ -f "$props" ]
then
  echo "Reading passed key values"
  ls -la
  while IFS= read -r var
  do
    if [ ! -z "$var" ]
    then
      echo "Adding: $var"
      export "$var"
    fi
  done < "$props"
fi
echo "hi ${hi}"
