#!/bin/bash
for host in `cat hosts`; do ssh devops01@$host uptime; 
done
