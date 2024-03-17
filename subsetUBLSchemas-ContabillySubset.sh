#!/bin/bash

if [ "$3" = "" ]; then echo Missing results directory, environment, and dateZ arguments ; exit 1 ; fi

# Configuration parameters

export version=0.1
# These 2 links are now served from paulbalomiris service account
export libGoogle=https://docs.google.com/spreadsheets/d/1KIdXk7SHJmR-tDR5oPMz8CYn_SUu8s7Hufe5xxRlpKI
export docGoogle=https://docs.google.com/spreadsheets/d/179dKKZ-CnWH6CPBHsdrBUnh4udjGcbVQd3lIuKGhHSM
export copyright="Paul Balomiri and Cante Mining Corporation S.R.L"
export configDirectory=ContabillyUBL21Subset
export UBLversion=2.1
export title="Contabilly subset of UBL 2.1"
export package=Contabilly-subset-UBL-2.1
export subsetColumn=Subset
export subsetDocsRegex="(^UBL-(Invoice|ApplicationResponse)-2.1$)"

bash subsetUBLSchemas-common.sh "$1" "$2" "$3" "$4"

exit 0 # always be successful so that github returns ZIP of results
