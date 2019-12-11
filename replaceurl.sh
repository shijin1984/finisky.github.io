#!/bin/bash

exceptionfiles=('dailyvol.md' 'monthlyvol.md' 'lastquarterljdailydata.md' 'lastquarterdailyvol.md')

for f in ./_posts/*.md; do
    skip="false"
    for e in ${exceptionfiles[*]}; do
        if [[ $f == *$e ]]; then
            skip="true"
        fi
    done

    if [ $skip == "false" ]; then
        sed -i 's/"\/images\//"https:\/\/linux1290.blob.core.windows.net\/finiskyimages\//' $f
    fi
done

