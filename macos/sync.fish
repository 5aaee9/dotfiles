#!/usr/bin/fish

# Make sure added google drive account

set Account Google

for key in (cat sync.json | jq -r 'keys[]')
  set realPath (echo $key | sed "s#^\~#$HOME#g")
  set value (cat sync.json | jq -r '.["'$key'"]')
  if test "$argv[1]" = "up"
    rclone copy -vv -l $realPath $Account:$value
  else
    rclone copy -vv -l $Account:$value (dirname $realPath)
  end
end
