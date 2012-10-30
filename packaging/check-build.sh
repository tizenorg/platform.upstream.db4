#!/bin/bash
# Copyright (c) 2004 SuSE Linux AG, Germany.  All rights reserved.
#

# get kernel version
OFS="$IFS" ; IFS=".-" ; version=(`uname -r`) ; IFS="$OIFS"
if test ${version[0]} -lt 2 -o ${version[1]} -lt 6 -o ${version[2]} -lt 4 ; then
        echo "FATAL: kernel too old, need kernel >= 2.6.4 for this package" 1>&2
        exit 1
fi

exit 0

