#!/bin/bash
echo "--------------------------------  Settings ------------------------------------"
echo "CONFD_INTERVAL:               $CONFD_INTERVAL"
echo "CONFD_LOG_LEVEL:              $CONFD_LOG_LEVEL"
echo "CONFD_BACKEND:                $CONFD_BACKEND"
echo "CONFD_PREFIX:                 $CONFD_PREFIX"
echo "MOPPER_KEEP_VOLUMES_NAMED:    $MOPPER_KEEP_VOLUMES_NAMED"
echo "MOPPER_KEEP_CONTAINERS_NAMED: $MOPPER_KEEP_CONTAINERS_NAMED"
echo "MOPPER_DEBUG:                 $MOPPER_DEBUG"
echo "-------------------------------------------------------------------------------"
exec confd --backend $CONFD_BACKEND --interval $CONFD_INTERVAL --log-level $CONFD_LOG_LEVEL --prefix $CONFD_PREFIX