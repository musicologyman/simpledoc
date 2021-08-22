#!/bin/bash

SIMPLEDOC_DIR=$(kpsewhich -var-value=TEXMFHOME)/tex/latex/simpledoc
SIMPLEDOC_STY=$SIMPLEDOC_DIR/simpledoc.sty

# Check if simpledoc directory exists. If not, create it
if [ ! -d "$SIMPLEDOC_DIR" ] 
then
    echo "$SIMPLEDOC_DIR does not exist. Creating ..."
    mkdir "$SIMPLEDOC_DIR"
fi

# Check if simpledoc.sty file exists. Prompt the user whether to overwrite it
if [ -f "$SIMPLEDOC_STY" ] 
then
        echo "A simpledoc.sty file already exists. Do you want to overwrite it?" 
        select yn in "Overwrite" "No"; do
            case $yn in
                Overwrite ) cp -R simpledoc.sty $SIMPLEDOC_STY; break;;
                No ) exit;;
            esac
        done
else
    cp -R simpledoc.sty $SIMPLEDOC_STY
fi


