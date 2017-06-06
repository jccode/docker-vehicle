#!/bin/sh

#BASEDIR=$(dirname $([ -L $0 ] && readlink -f $0 || echo $0))
BASEDIR=$BASEDIR
#MAIN_CLASS=com.suyun.vehicle.jtserver.server.TerminalServer
#CLASSPATH=$BASEDIR/vehicle-terminal-server-jt-1.0-SNAPSHOT.jar:$BASEDIR/dependency/*:$BASEDIR/resources
CLASSPATH=$CLASSPATH:$BASEDIR/dependency/*:$BASEDIR/resources
LOG_CONFIG=$BASEDIR/resources/logback.xml
ARGS="-Dlogback.configurationFile=${LOG_CONFIG}"

java $ARGS -cp $CLASSPATH $MAIN_CLASS
