#!/usr/bin/env fish
set DIR (cd (dirname (status -f)); and pwd)

defaults import com.googlecode.iterm2 $DIR/iterm.plist
