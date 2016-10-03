#!/bin/bash

nodes=$( knife node list -E sncrbda-qa | grep ^mapr)

for n in $nodes; do
    short=$(echo $n | sed 's/-i.*$//')
    eval $short=$n
done

knife node run_list add $mapr102 'role[mapr_spark_master],role[mapr_oozie_server]'

knife node run_list add $mapr103 'role[mapr_oozie_client]'

knife node run_list add $mapr104 'role[mapr_spark_worker]'
knife node run_list add $mapr105 'role[mapr_spark_worker]'

knife node run_list add $mapr106 'role[mapr_drill_worker]'
knife node run_list add $mapr107 'role[mapr_drill_worker]'
knife node run_list add $mapr108 'role[mapr_drill_worker]'
