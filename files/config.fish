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
