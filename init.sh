#!/usr/bin/env sh

# === CHANGE THESE =====

project_name="example_name"
author_names="example_names"
author_email="example_email"
github_name="example_github_name"
project_description="example_description"  # Appears in setup.cfg
project_copyright_description="example_copyright_description"  # Appears in copyright comments

# === STOP HERE ========

for file in README.md setup.cfg src/PROJECT_NAME/__init__.py docs/source/conf.py docs/source/index.rst docs/source/PROJECT_NAME.rst .readthedocs.yaml; do
	sed -i "s/PROJECT\\\\\\?_NAME/$project_name/g" $file
	sed -i "s/AUTHOR_NAMES/$author_names/g" $file
	sed -i "s/AUTHOR_EMAIL/$author_email/g" $file
	sed -i "s/GITHUB_NAME/$github_name/g" $file
	sed -i "s/PROJECT_DESCRIPTION/$project_description/g" $file
	sed -i "s/PROJECT_COPYRIGHT_DESCRIPTION/$project_copyright_description/g" $file
done
