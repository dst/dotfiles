#!/bin/bash

# Dariusz Stefanski
# 14.10.2015
#
# Starts H2 server

H2_BIN_DIR=~/programs/h2/bin

java -cp $H2_BIN_DIR/h2*.jar org.h2.tools.Server
