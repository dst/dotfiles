#!/bin/bash

# Author: Dariusz Stefanski
# Date:   26 Mar 2012

pattern=$1

find -iname "*$pattern*" | xargs git blame
