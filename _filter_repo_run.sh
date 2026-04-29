#!/bin/sh
apk add --no-cache git >/dev/null 2>&1
pip install --quiet git-filter-repo
git config --global user.email 'sync@portfolio'
git config --global user.name 'Portfolio Sync'
git filter-repo --force --path 'projects/wms-platform/settings.gradle' --invert-paths
git filter-repo --force --path 'libs/' --path 'platform/' --path 'rules/' --path '.claude/' --path 'tasks/templates/' --path 'docs/guides/' --path 'build.gradle' --path 'settings.gradle' --path 'gradle/' --path 'gradlew' --path 'gradlew.bat' --path 'gradle.properties' --path '.gitignore' --path '.gitattributes' --path '.dockerignore' --path '.editorconfig' --path '.github/' --path 'CLAUDE.md' --path 'TEMPLATE.md' --path 'projects/wms-platform/' --path-rename 'projects/wms-platform/:'
