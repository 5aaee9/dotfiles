#!/usr/local/bin/fish

status --is-interactive; and source (jenv init -|psub)

echo "
set PATH $HOME/.jenv/bin $PATH
status --is-interactive; and source (jenv init -|psub)
" > ~/.config/fish/conf.d/

jenv add /Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home
jenv add /usr/local/opt/openjdk@11

# Set default to 11
jenv global 11
