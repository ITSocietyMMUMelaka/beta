#!/bin/bash
echo Setting up submodules...
git config --file=.gitmodules submodule.site/themes/after-dark.url https://github.com/ITSocietyMMUMelaka/after-dark.git
git submodule update --init --recursive

echo Updating git info...
git log -1 --pretty="format:author = \"%aN\"%nhash = \"%H\"%nabbreviated_hash = \"%h\"%ndate = \"%ad\"" --date="format:%Y/%m/%d %H:%M %p" > site/data/LatestGitInfo.toml

echo Checking hugo...
hugo version

echo Building site...
cd site
hugo 
cd ..

echo Deploying via FTP...
lftp -e "open sftp://$USERNAME:$PASSWORD@$SITE; rm -rf $TARGETFOLDER; mirror --verbose --reverse prod /$TARGETFOLDER;bye;"

echo Done.