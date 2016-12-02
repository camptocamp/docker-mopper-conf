#!/bin/bash
confd --backend rancher --onetime --log-level debug --prefix /2015-07-25
echo
echo "-------------------- /mopper/rancher/inventory/containers ---------------------"
cat mopper/rancher/inventory/containers
exec echo "-------------------------------------------------------------------------------"

