#!/bin/sh 

config_files_path="$HOME/dotfiles/files"
file_names=$(ls -A $config_files_path)
 
for file in ${file_names[@]}; do
  if [ -f "$HOME/$file" ]; then
      echo "$HOME/$file exists, removing..."
      rm "$HOME/$file"
  else 
      echo "$HOME/$file does not exist."
  fi
  echo "link $config_files_path/$file -> $HOME/$file"
  ln -nfs $config_files_path/$file $HOME/$file
done