#!/bin/bash

# Dariusz Stefanski
# 08.09.2014
# Installs latest Groovy using SDKMAN! (The Software Development Kit Manager),
# formerly known as GVM.

curl -s get.sdkman.io | bash

source ~/.sdkman/bin/sdkman-init.sh
sdk install groovy
