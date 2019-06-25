#!/bin/sh
echo "arg1: bag file name"
echo "arg2: output file name(option)"
echo "arg3: topic name (option)"

outputFileName="result.csv"
topicName="/scan"

if [ $# -gt 1 ]; then
  outputFileName=$2
  if [ $# -gt 2 ]; then
    topicName=$3
  fi
fi

rostopic echo -b $1 -p topicName >> $outputFileName

echo "Done"
