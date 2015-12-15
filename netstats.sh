#!/bin/bash

total_conn=$(netstat -alntp | grep ':80' | wc -l)
echo "total Number of connections to Varnish are:- " $total_conn
total_esta_conn=$(netstat -alntp | grep ':80' | grep ESTA | wc -l)
echo "total Number of ESTABLISHED connections to Varnish are:- " $total_esta_conn
echo "List of ips is:-"
netstat -alntp | grep :80 | awk '{print $5}' | cut -d: -f1 | sort | uniq -c | sort -n
