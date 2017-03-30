#!/bin/bash
if [ "$1" == "force" ] || [ ! -f .tags ]; then
    ctags -R --languages=php \
             --php-kinds=cifd \
             --tag-relative=yes \
             --regex-PHP='/(abstract\s+|final\s+).*function\s+\&?\s*([^ (]+)/\2/f/' \
             --regex-PHP='/(public\s+|static\s+|abstract\s+|protected\s+|private\s+)function\s+\&?\s*([^ (]+)/\2/f/' \
             --exclude=".git" \
             --exclude=tests \
             --exclude=spec \
             --exclude=node_modules \
             --exclude=bower_components \
             --exclude=vendor \
             -f .tags
fi
