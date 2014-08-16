#!/bin/bash
# chmod 744 script/app/*.sh

#######################################
# INCLUDE HELPERS
#######################################
CURRENT_DIR=`dirname $0`
source $CURRENT_DIR/_helpers.sh

#######################################
# VARIABLES FOR INIT/START/STOP SCRIPTS
#######################################

# MAIN VARS
RUBY_VERSION='ruby-2.1.1-p76'
GEMSET_NAME='RAILS_PROJECT_GEMSET_NAME'
ENV_NAME='development'

# APP VARS
RAILS_ROOT=`readlink -f ../../`
APP_ENV="RAILS_ENV=$ENV_NAME"

# RVM VARS
RVM_BIN=`which rvm`
RVM_DO="$RVM_BIN $RUBY_VERSION@$GEMSET_NAME do"

# HELPER VARS
BUNDLE_EXEC="$RVM_DO bundle exec"
RAKE_DO="$BUNDLE_EXEC rake"

#######################################
# EXPORT VARS TO ENV
#######################################

export $APP_ENV

#######################################
# ECHO DEBUG
#######################################

# echo $RUBY_VERSION
# echo $GEMSET_NAME
# echo $ENV_NAME
# echo $RAILS_ROOT
# echo $APP_ENV
# echo $RVM_BIN
# echo $RVM_DO
# echo $BUNDLE_EXEC
# echo $RAKE_DO
