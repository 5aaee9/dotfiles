#!/usr/local/bin/fish

# Fetch macos version
set MACOS_VERSION (sw_vers -productVersion | cut -d"." -f 2)

if test $MACOS_VERSION -le 13
  brew install mas-cli/tap/mas
else
  brew install mas
end

# https://apps.apple.com/cn/app/%E8%87%AA%E5%8A%A8%E5%88%87%E6%8D%A2%E8%BE%93%E5%85%A5%E6%B3%95/id1470350547
mas install 1470350547

# https://apps.apple.com/us/app/magnet/id441258766
mas install 441258766

# https://apps.apple.com/us/app/%E8%B6%85%E7%BA%A7%E5%8F%B3%E9%94%AE-irightmouse/id1497428978?mt=12
mas install 1497428978

# https://apps.apple.com/cn/app/tencent-lemon-lite/id1449962996
mas install 1449962996