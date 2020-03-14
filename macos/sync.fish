#!/usr/bin/fish

# Make sure added google drive account

set Account Google
set Dir (cd (dirname (status -f)); and pwd)
set Config (cat "$Dir/sync.json")

for key in (echo $Config | jq -r 'keys[]')
  set realPath (echo $key | sed "s#^\~#$HOME#g")
  set value (echo $Config | jq -r '.["'$key'"]["dest"]')
  set type (echo $Config | jq -r '.["'$key'"]["type"]')
  if test "$argv[1]" = "up"
    rclone copy -vv -l $realPath $Account:$value
  else
    if test "$type" = "f"
      rclone copy -vv -l $Account:$value (dirname $realPath)
    else
      rclone copy -vv -l $Account:$value $realPath
    end
  end
end
