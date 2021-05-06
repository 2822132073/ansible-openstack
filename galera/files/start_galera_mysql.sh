#!/bin/bash
gtid=\`cat /var/lib/mysql/grastate.dat | grep -E "^\s*safe_to_bootstrap:" | awk '{print \$2}'\`
if [[ \$gtid == "1" ]]; then
   systemctl stop mysqld
   mysqld --wsrep-recover
   /usr/bin/mysqld_bootstrap
else
   while ! systemctl status mysqld; do
      systemctl start mysqld
   done
fi

