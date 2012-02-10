#! /bin/bash 

# Usage: rev_add_album [directory]
# Open all music files in a dir in reverse alphabetical order.
# This allows you to add an album and then listen to it in order
#   if your playlist is sorted newest on top.

if [ "$1" ]; then
  cd "$1"
fi

ls | egrep '\.mp3$|\.m4a$' | sort -r | while read song; do
  open "$song"
  sleep 2
done

