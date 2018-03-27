#!/bin/sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
if [ -z "docfx.console" ]; then 
    nuget install docfx.console -ExcludeVersion 
fi
cd ../docs
if [ -d "obj" ]; then
    rm -rv obj
fi
if [ -d "vslivesharedocs" ]; then
    rm -rv vslivesharedocs
fi
mono ../.build/docfx.console/tools/docfx.exe docfx.json