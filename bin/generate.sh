#!/usr/bin/env bash
openapi-generator generate \
  --generator-name typescript-axios \
  --input-spec ./vendor/economic/openapi.json \
  --output . \
  --package-name=economic \
  --additional-properties="withNodeImports=true" \
  --additional-properties="withSeparateModelsAndApi=true" \
  --additional-properties="npmName=economic-client" \
  --additional-properties="apiPackage=api" \
  --additional-properties="modelPackage=model" \
  --additional-properties="useSingleRequestParameter=true" \
