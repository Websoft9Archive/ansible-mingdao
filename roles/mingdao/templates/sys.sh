#!/bin/bash
if [[ -f /usr/local/mingdao/first ]];then rm -rf /data/mingdao/;fi 
/bin/rm -f /usr/local/mingdao/first
/bin/rm -f /usr/local/mingdao/service.pid
/bin/bash /usr/local/mingdao/service.sh start
