#!/usr/bin/env bash

input=$1
name="$(echo $input | tr '[:upper:]' '[:lower:]')" # Lowercase
file="$(tr '[:lower:]' '[:upper:]' <<< ${input:0:1})${input:1}" # Capitalize first letter
echo "Generating $name and $file"

openapi-generator generate \
  --generator-name typescript-axios \
  --input-spec ./vendor/economic/openapi-$file.json \
  --output ./packages/$name \
  --package-name=economic \
  --skip-validate-spec \
  --additional-properties="withNodeImports=true" \
  --additional-properties="withSeparateModelsAndApi=true" \
  --additional-properties="npmName=economic-$name-client" \
  --additional-properties="apiPackage=api" \
  --additional-properties="modelPackage=model" \
  --additional-properties="useSingleRequestParameter=true" \
