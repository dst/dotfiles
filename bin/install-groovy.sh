#!/bin/bash

# Dariusz Stefanski
# 08.09.2014
# Installs latest Groovy using GVM

# GVM the Groovy enVironment Manager
curl -s get.gvmtool.net | bash

. ~/.gvm/bin/gvm-init.sh
gvm install groovy

