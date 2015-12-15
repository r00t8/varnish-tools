#!/bin/bash

total_conn=$(netstat -alntp | grep ':80' | wc -l)
echo "total Number of connections to Varnish are:- " $total_conn
total_esta_conn=$(netstat -alntp | grep ':80' | grep ESTA | wc -l)
echo "total Number of ESTABLISHED connections to Varnish are:- " $total_esta_conn
