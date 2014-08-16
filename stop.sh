#!/bin/bash
# chmod 744 script/app/*.sh

#######################################
# INCLUDE COMMON VARIABLES
#######################################
CURRENT_DIR=`dirname $0`
source $CURRENT_DIR/_vars.sh

########################################
# SPHINX
########################################
service_notification "SPHINX" "try to stop"
($RAKE_DO ts:stop) || (error_message "Sphinx can't be stopped")
