# githooks

A collection of githooks for basic scenarios

## How it Works

It leverages `git hooks`.

The setup script reconfigures your local git clone's `hooksPath` to point to `.githooks`

The setup script ensures the file `.githooks/pre-commit` is executable. This file executes
or runs all the file in the `.githooks/pre-commit.d/` directory. 

The setup script ensures all the files in `.githooks/pre-commit.d` are executable.

The `.gitattributes` file preserves the executable bit in all the files.

## Usage

Simply copy all the files inside the name of the primary language your project is all about
into the root directory of your project and run `./setup-githook.sh`

### Note

This is prepared in a hurry to ensure everyone still runs the checkers we run using GH Action 
and everyone improves their `pre-commit` or `pre-push` processes.

This script can be easily adopted to move some of the process to run during `pre-push`

#### Special Note on for Projects with NPM part of the requirement.

You can leverage the [husky](https://typicode.github.io/husky/) package and adopt the scripts above.

#### Special Note on for Projects with using Python.

There is a python based framework at [pre-commit.com](https://pre-commit.com) and adopt the scripts above.
