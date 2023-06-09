#!/bin/bash

echo "Inspect code using PHPStan"
# Run `./vendor/bin/phpstan analyse --memory-limit=2G` command
./vendor/bin/phpstan analyse --memory-limit=2G
if [ $? -ne 0 ]; then
  echo "Maven verify failed. Please fix the issues before committing."
  echo ""
  exit 1
fi
