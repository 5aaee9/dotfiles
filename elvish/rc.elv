use re
use readline-binding
use path
use str
use math

paths = [
  /run/wrappers/bin
  ~/.nix-profile/bin
  /nix/var/nix/profiles/default/bin
  /run/current-system/sw/bin
]

each [p]{
  if (not (path:is-dir (or (_ = ?(path:eval-symlinks $p)) $p))) {
    echo (styled "Warning: directory "$p" in $paths no longer exists." red)
  }
} $paths

use epm

epm:install &silent-if-installed         ^
  github.com/zzamboni/elvish-completions

#set-env http_proxy "http://192.168.1.6:7890"
#set-env https_proxy "http://192.168.1.6:7890"
#set-env all_proxy "http://192.168.1.6:7890"
