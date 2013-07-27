#!/bin/bash

# rebuild.sh - update contrib modules, themes, and libraries

# to run with a different drush binary, provide the name of the binary as parameter:
# $ ./rebuild.sh drush5

makefile=`find . -name stylista-no.make`

if [[ -z $1 ]]
then
  binary='drush'
else
  binary=$1
fi

if [[ -z $makefile || ! -f $makefile ]]
then
  echo 'No makefile found. Please make sure you are in a profile directory with a valid makefile.';
else

  # nuke existing modules, themes, and libraries
  for directory in ./modules/contrib ./modules/developer ./themes/contrib ./libraries
  do
    if [ -d $directory ]
    then
      rm -Rf $directory
    fi
  done

  $binary --version
  # add "--download-mechanism='drush_make'" if curl is not available on your system
  echo 'Updating contrib modules and themes...'
  echo "Command: $binary -y make --working-copy --no-core --contrib-destination=. $makefile"
  $binary -y make --working-copy --no-core --contrib-destination=. $makefile

  echo
fi
