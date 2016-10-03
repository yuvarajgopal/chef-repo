#!/bin/bash


for n in $( knife node list -E sncrbda-qa | grep mapr); do
    knife node delete $n -y
    knife client delete $n -y
done
