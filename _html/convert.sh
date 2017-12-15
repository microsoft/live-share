#!/bin/bash
ghmd -v > /dev/null 2>&1 || { echo  "(!) Installing github-markdown..."; npm i -g github-markdown; echo "(i) Done!"; }

BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BASEOUT=$BASEDIR/out
HEADERREPLACECMD="s/<body>/"$(cat $BASEDIR/header.part | tr -d '\n' | tr "'" '"'  | sed 's/\//\\\//g')"/g"

# Delete old HTML
rm -rv $BASEOUT > /dev/null 2>&1
mkdir $BASEOUT
cd $BASEOUT
# Convert each folder
for FOLDER in "." "docs" "welcome"
do
    echo "(i) Converting markdown for \"$FOLDER\"..."
    # Move to docs sub-dir
    if [ ! -d "$FOLDER" ]
    then
        mkdir $FOLDER
    fi 
    cd $FOLDER
    # Copy markdown files as temp switching .md => .html along the way
    for FILE in $BASEDIR/../$FOLDER/*.md
    do
        cat $FILE | \
            sed 's/\.md)/\.html)/g' | \
            tee $(basename $FILE) > /dev/null
    done
    # Convert
    ghmd *.md
    # Use different flag on linux vs Mac
    FLAG="--in-place=.bak"
    if [ "$(uname)" = "Darwin" ] 
    then
        FLAG="-i .bak"
    fi
    # Fix html tags
    sed $FLAG 's/&lt;/</g' *.html
    sed $FLAG 's/&gt;/>/g' *.html
    sed $FLAG 's/&quot;/"/g' *.html
    # Add header html part
    sed $FLAG "$HEADERREPLACECMD" *.html
    # Replace end tags with footer html part
    sed $FLAG 's/<\/body>\\n<\/html>//g' *.html
    for FILE in *.html
    do
        echo $FILE
        cat $BASEDIR/footer.part >> $FILE
    done
    # Remove temp files
    rm *.md
    rm *.bak
    # Copy media
    MEDIA=$BASEDIR/../$FOLDER/media
    if [ -d "$MEDIA" ]
    then
        echo "(i) Copying media folder..."
        cp -R $MEDIA media
    fi 
    # Back up
    cd $BASEOUT
    echo "(i) Done!"
done
# Create index.html
cat $BASEDIR/index.part > index.html

