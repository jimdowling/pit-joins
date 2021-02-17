#!/bin/bash

if [ $# -ne 1 ] ; then
    printf "Please enter project name: "
    read  PROJECT
    echo ""
else
    PROJECT=$1
fi

echo "Copying files from AML repo to Hopsworks."
echo "This will take a little bit..."

hdfs dfs -copyFromLocal -f *.csv /Projects/${PROJECT}/Resources

echo "Done!"
