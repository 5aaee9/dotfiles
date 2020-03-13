#!/usr/bin/fish

# Make sure added google drive account

set Account Google
set Dir (cd (dirname (status -f)); and pwd)

for key in (cat $Dir/sync-file.json | jq -r 'keys[]')
  set realPath (echo $key | sed "s#^\~#$HOME#g")
  set value (cat $Dir/sync-file.json | jq -r '.["'$key'"]')
  if test "$argv[1]" = "up"
    rclone copy -vv -l $realPath $Account:$value
  else
    rclone copy -vv -l $Account:$value (dirname $realPath)
  end
end
