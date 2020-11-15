#!/bin/sh 

filez=(".vimrc")

for file in ${filez[@]}; do
  if [ -f "$HOME/$file" ]; then
      echo "$HOME/$file exists, removing..."
      rm "$HOME/$file"
  # else 
  #     echo "$HOME/$file does not exist."
  fi
  echo "link $HOME/$file"
  ln -nfs $HOME/dotfiles/$file $HOME/$file
done