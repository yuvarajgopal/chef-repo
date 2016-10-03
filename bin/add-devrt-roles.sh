#!/bin/bash

nodes=$( knife node list -E sncrbda-dev-rt | grep ^rtmapr)

for n in $nodes; do
    short=$(echo $n | sed 's/-i.*$//')
    eval $short=$n
done

knife node run_list add $rtmapr101 'role[mapr_spark_master]'

knife node run_list add $rtmapr102 'role[mapr_spark_worker]'
knife node run_list add $rtmapr103 'role[mapr_spark_worker]'
