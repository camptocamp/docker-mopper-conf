#!/bin/bash
echo "--------------------------------  Environments Variables -----------------------"
echo "CONFD_INTERVAL:               $CONFD_INTERVAL"
echo "CONFD_LOG_LEVEL:              $CONFD_LOG_LEVEL"
echo "CONFD_BACKEND:                $CONFD_BACKEND"
echo "CONFD_PREFIX:                 $CONFD_PREFIX"
echo "MOPPER_KEEP_CONTAINERS:       $MOPPER_KEEP_CONTAINERS"
echo "MOPPER_KEEP_VOLUMES_NAMED:    $MOPPER_KEEP_VOLUMES_NAMED"
echo "MOPPER_KEEP_IMAGES:           $MOPPER_KEEP_IMAGES"
echo "MOPPER_DELAY_TIME:            $MOPPER_DELAY_TIME"
echo "MOPPER_DEBUG:                 $MOPPER_DEBUG"
echo "--------------------------------------------------------------------------------"
exec confd --backend $CONFD_BACKEND --interval $CONFD_INTERVAL --log-level $CONFD_LOG_LEVEL --prefix $CONFD_PREFIX