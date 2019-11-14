#!/bin/bash
mkdir -p 'out'
cat ./*.css | perl -pe 's/\n//mg;' -pe 's/ {2,}/ /g;' | perl -pe 's/ ?(\{|\}|,|\;|\(|\)|:|>) ?/\1/g;' > out/full.css