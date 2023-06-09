#!/bin/bash

echo "Inspect code using php-cs-fixer"
# Run `mvn checkstyle:check` command
./vendor/bin/php-cs-fixer fix --dry-run
if [ $? -ne 0 ]; then
  echo "CS Fixed failed to fix something while on dry-run."
  echo ""
  exit 1
fi
