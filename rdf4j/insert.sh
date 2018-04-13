#! /bin/bash
~/Téléchargements/eclipse-rdf4j-2.2.4/bin/console.sh -s http://147.99.7.61:8080/rdf4j-server


open phispubli
load /home/heinrich/melody/rdf4j/turtle/experiment_parsed.ttl into http://www.phenome-fppn.fr/diaphen/DIA2017-2
load /home/heinrich/melody/rdf4j/turtle/vocabulary_parsed.ttl into http://www.phenome-fppn.fr/vocabulary/2017
load /home/heinrich/melody/rdf4j/turtle/species_parsed.ttl into http://www.phenome-fppn.fr/species