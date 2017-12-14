#!/bin/bash
ghmd -v > /dev/null 2>&1 || { echo  "(!) Installing github-markdown..."; npm i -g github-markdown; echo "(i) Done!"; }

echo "(i) Converting markdown..."
# Move to docs sub-dir
rm -rv docs > /dev/null 2>&1
mkdir docs
cd docs
# Delete old HTML
# Copy markdown files as temp switching .md => .html along the way
for FILE in ../../docs/*.md 
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
sed $FLAG 's/<\/body>/<script> var headings = document.querySelectorAll("h1, h2, h3, h4, h5, h6"); headings.forEach(function(heading) { var anchor = document.createElement("a"); anchor.name = heading.textContent.replace(\/\[\^\\w\\s\]\/gi, "").replace(\/ \/gi, "-").toLowerCase(); heading.appendChild(anchor); });<\/script>/g' *.html
# Remove temp files
rm *.md
rm *.bak

echo "(i) Copying media folder..."
cp -R ../../docs/media media
echo "(i) Done!"


#   <script>
#      var headings = document.querySelectorAll("h1, h2, h3, h4, h5, h6");
#      headings.forEach(function(heading) {
#        var anchor = document.createElement("a");
#        anchor.name = heading.textContent.replace(/[^\w\s]/gi, "").replace(/ /gi, "-").toLowerCase();
#        heading.appendChild(anchor);
#      });
#    </script>