#!/bin/bash
HOOKS_PATH=.githooks

# Check and modify this project's git core.hooksPath value
CURRENT_HOOK_PATH=`git config --local core.hooksPath`
if [ "$CURRENT_HOOK_PATH" == "$HOOKS_PATH" ]; then
  echo "Current core.hooksPath matches \$HOOKS_PATH"
  echo "Hooks Path: $CURRENT_HOOK_PATH"
  echo ""
  echo "You may have already setup local value for core.hooksPath before."
  echo "Please open $0 and review setup manually."
#  exit 1
else
  echo "Setting local git's core.hooksPath to $HOOKS_PATH"
  git config --local core.hooksPath $HOOKS_PATH
fi

# Set pre-commit file to executable, the $HOOKS_PATH/pre-commit file
# loops through $HOOKS_PATH/pre-commit.d/, thus requires them to be 
# executable. To disable a specific pre-commit script, chmod -x it.
if [ -x "$HOOKS_PATH/pre-commit" ]; then
  echo "File $HOOKS_PATH/pre-commit is already executable."
else
  echo "Enabling pre-commit $HOOKS_PATH/pre-commit"
  chmod +x $HOOKS_PATH/pre-commit
fi

# Setting all scripts in directory to executable
cat <<EOF

New pre-commit scripts should be under $HOOKS_PATH/pre-commit.d/
Setting all scripts under $HOOKS_PATH/pre-commit.d/ to executable.
EOF
chmod +x $HOOKS_PATH/pre-commit.d/*

