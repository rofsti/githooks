#!/bin/bash

echo "Blade code format"
# Run `./vendor/bin/phing blade-code-format` command
./vendor/bin/phing blade-code-format
if [ $? -ne 0 ]; then
  echo "Phing blade-code-format failed to format something. Manually review."
  echo ""
  exit 1
fi
