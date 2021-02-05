#!/usr/local/bin/fish

set FF_HOME "$HOME/Library/Application Support/Firefox/Profiles/"
set ACTIVE_PROFILE (ls $FF_HOME | grep default-release)
set PROFILE_ROOT $FF_HOME$ACTIVE_PROFILE
set DIR (cd (dirname (status -f)); and pwd)

echo $PROFILE_ROOT
cp $DIR/user.js $PROFILE_ROOT
