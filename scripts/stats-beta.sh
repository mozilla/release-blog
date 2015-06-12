#!/bin/bash
# This script generates stats between two tags of Firefox
# It will generate an HTML result.

if test $# -ne 3; then
    echo "Wrong syntax. Expecting:"
    echo "$0 <directory> <previous revision> <current>"
    exit 1
fi

DIRECTORY=$1
PREV=$2
CURRENT=$3

if test ! -d $DIRECTORY; then
    echo "Cannot find/access $DIRECTORY"
    exit 1
fi
if test ! -d $DIRECTORY/.hg; then
    echo "Cannot find/access $DIRECTORY/.hg. Not a mercurial repository?"
    exit 1
fi

cd $DIRECTORY

# Update of the repository
hg pull -u > /dev/null
hg update -r default > /dev/null

if grep -q mozilla-release .hg/hgrc; then
	RELEASE=1
else
	RELEASE=0
fi

REVISION="ancestor($PREV,$CURRENT)::$CURRENT  - ancestor($PREV,$CURRENT)"

STATS=$(hg diff --stat --rev "$REVISION"|tail -1)

# Parse "112 files changed, 2174 insertions(+), 423 deletions(-)"
FILES_CHANGED=$(echo $STATS|sed -e "s|\([0-9]*\) files changed.*|\1|g")
INSERT=$(echo $STATS|sed -e "s|.* \([0-9]*\) insertions.*|\1|g")
DELETE=$(echo $STATS|sed -e "s|.* \([0-9]*\) deletions(-)|\1|g")

LIST=$(hg log --rev "$REVISION" --template '<tr><td><strong>{author|person}</strong></td><td>{desc|firstline|strip|escape} - <a href="https://hg.mozilla.org/releases/mozilla-beta/rev/{node|short}">{node|short}</a></td></tr>\n'|grep -v "<strong>ffxbld")
if test $RELEASE -eq 1; then
	LIST=$(echo "$LIST"|sed -e "s|mozilla-beta|mozilla-release|g")
fi

# get the list of languages used
LANGUAGES=$(hg diff --rev "$REVISION"|grep +++|sed -e "s|.*\.\(.*\)$|\1|g"|grep -v ^+++|sort |uniq -c|sort -n -r)
# get the list of modules touched
MODULES=$(hg diff --rev "$REVISION"|grep +++|sed -e "s|+++ b/\([[:alnum:]]*\)/.*|\1|g"|grep -v ^+++|uniq -c|sort -r -n)

NB_CHANGESET=$(echo "$LIST"|wc -l)

# Generate the metadata for the blog post
MAJOR_VERSION=$(echo $PREV|sed -e "s|FIREFOX_\(.*\)_.*_.*|\1|g")
PREV_BETA_VERSION=$(echo $PREV|sed -e "s|FIREFOX_.*_0b\(.*\)_.*|\1|g")
CURRENT_BETA_VERSION=$(echo $CURRENT|sed -e "s|FIREFOX_.*_0b\(.*\)_.*|\1|g")
CURRENT_DATE=$(date +"%Y-%m-%d %H:%M:%S")

echo "---
layout: post
title:  \"Firefox $MAJOR_VERSION beta$PREV_BETA_VERSION to beta$CURRENT_BETA_VERSION\"
date:   $CURRENT_DATE
categories: statistics $MAJOR_VERSION
---
"

echo "<p>"
echo "<ul>"
echo "<li>"$NB_CHANGESET" changesets</li>"
echo "<li>"$FILES_CHANGED" files changed</li>"
echo "<li>"$INSERT" insertions</li>"
echo "<li>"$DELETE" deletions</li>"
echo "</ul>"
echo "</p>"
echo "<p>"
echo "<table><tr><td><strong>Extension</strong></td><td><strong>Occurrences</strong></td></tr>"
echo "$LANGUAGES"|awk '{print "<tr><td>"$2"</td><td>"$1"</td></tr>"}'
echo "</table>"
echo "</p>"
echo "<p>"
echo "<table><tr><td><strong>Module</strong></td><td><strong>Occurrences</strong></td></tr>"
echo "$MODULES"|awk '{print "<tr><td>"$2"</td><td>"$1"</td></tr>"}'
echo "</table>"
echo "</p>"
echo "<p>List of changesets:"

echo "<table>"
echo "$LIST"|sed -e "s|Bug \([0-9]\+\)|<a href=\"https://bugzilla.mozilla.org/\1\">Bug \1</a>|gi"
echo "</table>"
echo "</p>"
