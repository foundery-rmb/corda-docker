#!/bin/sh

# If variable not present use default values
: ${CORDA_HOME:=/opt/corda}
: ${JAVA_OPTIONS:=-Dlog4j.configurationFile=/opt/corda/log4j.xml -Xmx2048m}

export CORDA_HOME JAVA_OPTIONS

cd ${CORDA_HOME}

java $JAVA_OPTIONS -jar ${CORDA_HOME}/corda.jar

