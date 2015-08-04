#!/bin/bash

# Default values
EDITOR="${EDITOR:-vim}"
EXT="${EXT:-md}"
POST_DIR="${POST_DIR:-_posts}"

# Parse args
if [ "$#" -lt 1 ]; then
    echo -e "Usage:"
    echo -e "\t$(basename "$0") <title>"
    exit 1
fi

# Define base vars
TITLE="$*"
SLUG="$(
    echo "$TITLE" |
    iconv -c -t 'ASCII//TRANSLIT' |
    tr 'A-Z' 'a-z' |
    sed -e 's/[ \t\r\n_]/-/g' -e 's/-\+/-/g' -e 's/[^a-z\-]//g'
)"
POST_FILE="$(dirname "$0")/$POST_DIR/$(date '+%Y-%m-%d')-$SLUG.$EXT"
if [ -e "$POST_FILE" ]; then
    echo "The file \"$POST_FILE\" already exists."
    exit 1
fi

# Create post file
cat > "$POST_FILE" << END
---
layout:     post
title:      "$TITLE"
date:       $(date '+%Y-%m-%d %H:%M:%S')
categories: 
tags:       
---

END
echo "Post file: \"$POST_FILE\"."

# Edit post file
if [ -n "$EDITOR" ]; then
    case "$EDITOR" in
    vim?)
        ADDITIONAL_ARGS=+$
        ;;
    esac
    $EDITOR $ARGS "$POST_FILE"
fi
