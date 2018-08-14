function fish_greeting -d "What's up, fish?"
  set_color $fish_color_autosuggestion
  uname -nmsr
  uptime
  echo -n "
  _____           _                       ______
 |_   _|         | |                     |  ____|
   | |  _ __   __| | _____  ___   _ ____ | |__   _ ____   __
   | | | '_ \ / _` |/ _ \ \/ / | | |_  / |  __| | '_ \ \ / /
  _| |_| | | | (_| |  __/>  <| |_| |/ /  | |____| | | \ V /
 |_____|_| |_|\__,_|\___/_/\_\\__   /___| |______|_| |_|\_/
                               __/ |
                              |___/
"
  set_color normal
end
