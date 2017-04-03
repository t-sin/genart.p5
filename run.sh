#!/bin/bash

usage() {
    cat <<EOF
run a processing sketch (pde)
usage: run.sh SKETCH_DIR

EOF
    exit 1
}

if [ $# -ne 1 ]; then
    usage
fi

_JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on' \
             processing-java --sketch="$1" --run
