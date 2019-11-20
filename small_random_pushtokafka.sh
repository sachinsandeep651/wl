#!/bin/bash
host=eap-data-streamer.r1.us1.staging.iq.com
jmeterpath=../apache-jmeter-2.13/bin
java -Xms1G -Xmx3G -jar $jmeterpath/ApacheJMeter.jar -n -t HPVErandomIdSmallOrg.jmx -Jhost=$host -Jthreads=200 -Jthroughput_per_min=3000 -Jinput_file=cadence.all_users_small_fixed.csv  &
