#!/bin/bash

echo "PHPUnit"
# Run all unit test
composer dump-autoload
./vendor/bin/phpunit
if [ $? -ne 0 ]; then
  echo "A test failed to run. Please review the issues found."
  echo ""
  exit 1
fi
