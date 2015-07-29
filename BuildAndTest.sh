#!/bin/bash

ORIGPATH=$PATH

DIRCMD=0

if [ "$1" == "" ] || [ "$1" == "-E" ]; then
  "/usr/bin/ctest" -D Experimental --output-on-failure --build-and-test
fi

if [ "$1" == "-N" ]; then
  "/usr/bin/ctest" -D Nightly --build-and-test
fi

if [ "$1" == "-C" ]; then
  "/usr/bin/ctest" -D Continuous --build-and-test
  # Wait for some time before continue to allow checking the results of the executions
  sleep 15
fi

if [ "$1" == "-I" ]; then
  # Run individual tests with regexp search 
  # Display the list of tests
  "/usr/bin/ctest" -R "$2" -N
  # Run selected tests
  "/usr/bin/ctest" -R "$2" -V
fi

PATH=$ORIGPATH
echo "DONE"
