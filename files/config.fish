# Source homebrew env in darwin aarch64
if test -f /opt/homebrew/bin/brew
  /opt/homebrew/bin/brew shellenv | source
end

if status is-interactive
  # Commands to run in interactive sessions can go here
  starship init fish | source
  set -gx EDITOR "code --wait"
end

fish_add_path "$HOME/.local/bin/"

set -gx SSH_AUTH_SOCK "$(brew --prefix)/var/run/yubikey-agent.sock"

# Capacitor Android Studio
set -gx CAPACITOR_ANDROID_STUDIO_PATH "$HOME/Applications/Android Studio.app/"

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
fish_add_path "$HOME/Library/Android/sdk/build-tools/33.0.1"

# Java
fish_add_path "/usr/local/opt/openjdk@17/bin"
set -gx CPPFLAGS "-I/usr/local/opt/openjdk@17/include"

# Jetbrains Toolbox

if test -d "$HOME/Library/Application Support/JetBrains/Toolbox/scripts"
  fish_add_path "$HOME/Library/Application Support/JetBrains/Toolbox/scripts"
end

# Alias
if type -q eza
  alias ls 'eza'
end
alias find 'fd'
