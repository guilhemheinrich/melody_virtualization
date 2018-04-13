#! /bin/bash

rootDir="/home/heinrich/melody/rdf4j"

pathToCsv="$rootDir/csv"
pathToTurtle="$rootDir/turtle"
pathToConfig="$rootDir/json"
# parse date

for file in $(ls $pathToCsv)
do
    if [[ $file != *parsed* ]]
    then
    fullPathFile=$pathToCsv/$file
    basename=$(basename $file .csv)
    /home/heinrich/PHENOME/Ontology/DateParser.py $fullPathFile
    fi
done

# parse csv to turtle

for file in $(ls $pathToCsv)
do
    if [[ $file == *parsed* ]]
    then
    fullPathFile=$pathToCsv/$file
    basename=$(basename $file .csv)
    /home/heinrich/PHENOME/Ontology/CSVparser.py -i $fullPathFile -o $pathToTurtle/$basename.ttl $pathToConfig/config_$basename.json
    echo $fullPathFile
    echo $basename
    fi
done
