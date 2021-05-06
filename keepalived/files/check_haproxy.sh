#!/bin/bash
if [ $(ps -C haproxy --no-header | wc -l) -eq 0 ]; then
systemctl start haproxy.service
if [ $(ps -C haproxy --no-header | wc -l) -eq 0 ]; then
exit 1
else
exit 0
fi
else
exit 0
fi
