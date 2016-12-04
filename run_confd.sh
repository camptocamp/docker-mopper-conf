#!/bin/bash
echo "--------------------------------  Settings ------------------------------------"
echo "CONFD_INTERVAL:  $CONFD_INTERVAL"
echo "CONFD_LOG_LEVEL: $CONFD_LOG_LEVEL"
echo "CONFD_BACKEND:   $CONFD_BACKEND"
echo "CONFD_PREFIX:    $CONFD_PREFIX"
echo "-------------------------------------------------------------------------------"
exec confd --backend $CONFD_BACKEND --interval $CONFD_INTERVAL --log-level $CONFD_LOG_LEVEL --prefix $CONFD_PREFIX