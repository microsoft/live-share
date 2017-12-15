#!/bin/bash
ghmd -v > /dev/null 2>&1 || { echo  "(!) Installing github-markdown..."; npm i -g github-markdown; echo "(i) Done!"; }

BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BASEOUT=$BASEDIR/out

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
    # Append heading anchor script
    sed $FLAG 's/<\/body>/<script> var headings = document.querySelectorAll("h1, h2, h3, h4, h5, h6"); for (var i=0; i<headings.length; i++ ){ var anchor = document.createElement("a"); anchor.name = headings[i].textContent.replace(\/\[\^\\w\\s\]\/gi, "").replace(\/ \/gi, "-").toLowerCase(); headings[i].appendChild(anchor); };<\/script>/g' *.html
    # Remove temp files
    rm *.md
    rm *.bak
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
echo "<html><head><meta http-equiv='refresh' content='0;url=docs/getting-started.html'> </head></html>" > index.html

