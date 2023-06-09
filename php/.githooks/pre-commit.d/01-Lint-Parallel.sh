#!/bin/bash

echo "Inspect code using parallel-lint"
# Run `parallel-lint --exclude vendor` command
./vendor/bin/parallel-lint --exclude vendor .
if [ $? -ne 0 ]; then
  echo "Parallel lint run found some issue(s)."
  echo ""
  exit 1
fi
