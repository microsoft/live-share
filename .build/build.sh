#!/bin/enc 

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
if [ ! -d "docfx.console" ]; then 
    nuget install docfx.console -ExcludeVersion 
fi
if [ ! -d "node_modules" ]; then 
    npm install
fi
cd ../docs
if [ -d "obj" ]; then
    rm -rv obj
fi
if [ -d "vslivesharedocs" ]; then
    rm -rv vslivesharedocs
fi
../.build/node_modules/.bin/markdownlint .
mono ../.build/docfx.console/tools/docfx.exe docfx.json