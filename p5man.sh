#!/bin/bash

usage() {
    cat <<EOF
managing processing sketchs (pde)
usage: p5man.sh COMMAND [PARAMS...]

COMMANDS:
    init SKETCH_NAME
        create a sketch directory and a sketch file.

    run SKETCH_DIR
        run the scketch placed at SKETCH_DIR.

EOF
    exit 1
}

init () {
    if [ $# -lt 1 ]; then
        echo 'not supplied SKETCH_NAME.'
        return
    fi
    
    if [ -d $1 ]; then
        echo "'$1' is already exists. not created."
    else
        mkdir $1
    fi
    
    touch "$1/$1.pde"
}

run () {
    _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on' \
                 processing-java --sketch="$1" --run
}



if [ $# -lt 1 ]; then
    usage
fi

eval "$@"
