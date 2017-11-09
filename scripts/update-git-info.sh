#!/bin/bash
git log -1 --pretty="format:author = \"%aN\"%nhash = \"%H\"%nabbreviated_hash = \"%h\"%ndate = \"%ad\"" --date="format:%Y/%m/%d %H:%M %p" > site/data/LatestGitInfo.toml