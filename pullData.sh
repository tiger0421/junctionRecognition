#!/bin/sh
echo "arg1: bag file name"
echo "arg2: output file name"
echo "arg3: topic name (option)"

outputFileName="result.csv"
topicName="/scan"

if [ $# -gt 1 ]; then
  outputFileName=$2
  if [ $# -eq 2 ]; then
    topicName=$3
  fi
  rostopic echo -b $1 -p topicName > $outputFileName
else
  rostopic echo -b $1 -p topicName > $outputFileName
fi

echo "Done"
