#!/bin/bash

ORIGPATH=$PATH
DIRCMD=0

finish()
{
  PATH=$ORIGPATH
}

buildFailed ()
{
  echo "ERROR: Build failed..."
  finish
  exit $1
}

if [ "$1" == "" ] || [ "$1" == "-E" ]; then
  "/usr/bin/make"
  errorVal=$?
  if [ "$?" == 1 ]; then
    buildFailed $errorVal
  fi
  "/usr/bin/ctest" -D Experimental --output-on-failure
fi

if [ "$1" == "-N" ]; then
   # Clean before the nightly build to enforce all build warnings appear on all nightly dashboard submissions
  "/usr/bin/make" Clean
  "/usr/bin/make"
  "/usr/bin/ctest" -D Nightly
fi

if [ "$1" == "-C" ]; then
  "/usr/bin/make"
  "/usr/bin/ctest" -D Continuous
  # Wait for some time before continue to allow checking the results of the executions
  sleep 15
fi

if [ "$1" == "-I" ]; then
  # Run individual tests with regexp search 
  # Display the list of tests
  "/usr/bin/ctest" -R "%2" -N
  # Run selected tests
  "/usr/bin/ctest" -R "%2" -V
fi

finish
echo "DONE"
