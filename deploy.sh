#!/bin/bash -ue

#########################################
# INIT
#########################################

SCRIPT_URL="http://oak.cs.ucla.edu/classes/cs143/project/p1b_test"
ZIP_NAME="P1B.zip"
REQUIRED_FILES=( \
        team.txt \
        readme.txt \
        create.sql \
        load.sql \
        queries.sql \
        query.php \
        violate.sql \
        )

function cleanup {
    rm -rf 904280752
    echo "Finished deploy script"
}

trap cleanup EXIT

#########################################
# MAIN
#########################################

echo "Running deploy script..."

if [[ "$1" == '--submit' ]]; then
    mkdir 904280752
    cp ${REQUIRED_FILES[@]} 904280752
    zip -r ${ZIP_NAME} 904280752/
    rm -rf 904280752
    source <(curl -sL ${SCRIPT_URL}) 904280752
fi


