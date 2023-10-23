if status is-interactive
  # Commands to run in interactive sessions can go here
  starship init fish | source
  set -gx EDITOR "code --wait"
end

set -gx SSH_AUTH_SOCK "$(brew --prefix)/var/run/yubikey-agent.sock"
# GNU Toolkit
fish_add_path "$(brew --prefix)/opt/coreutils/libexec/gnubin"
fish_add_path "$(brew --prefix)/opt/findutils/libexec/gnubin"
fish_add_path "$(brew --prefix)/opt/gnu-getopt/bin"
fish_add_path "$(brew --prefix)/opt/gnu-tar/libexec/gnubin"
fish_add_path "$(brew --prefix)/opt/grep/libexec/gnubin"
fish_add_path "$(brew --prefix)/opt/gnu-sed/libexec/gnubin"
fish_add_path "$(brew --prefix)/opt/make/libexec/gnubin"

# Golang
fish_add_path "$HOME/go/bin"

# Android
fish_add_path "$HOME/Library/Android/sdk/platform-tools/"
fish_add_path "$HOME/Library/Android/sdk/cmdline-tools/latest/bin"

# Java
fish_add_path "/usr/local/opt/openjdk@17/bin"
set -gx CPPFLAGS "-I/usr/local/opt/openjdk@17/include"

# Alias
alias ls 'eza'
alias find 'fd'
