#!/usr/bin/env sh

# === CHANGE THESE =====

project_name="example_name"
author_names="example_names"
project_description="example_description"  # Appears in setup.cfg
project_copyright_description="example_copyright_description"  # Appears in copyright comments

# === STOP HERE ========

for file in setup.cfg src/PROJECT_NAME/__init__.py docs/source/conf.py docs/source/index.rst docs/source/PROJECT_NAME.rst; do
	sed -i "s/PROJECT\\\\\\?_NAME/$project_name/g" $file
	sed -i "s/AUTHOR_NAMES/$author_names/g" $file
	sed -i "s/PROJECT_DESCRIPTION/$project_description/g" $file
	sed -i "s/PROJECT_COPYRIGHT_DESCRIPTION/$project_copyright_description/g" $file
done
