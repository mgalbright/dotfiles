#!/bin/bash

files=".bash_profile .gitconfig .gitignore .pylintrc .vimrc .zshrc"
vscode_files="keybindings.json settings.json"
vscode_settings_folder=$HOME/Library/Application\ Support/Code/User

echo "backing up existing dotfiles"
mkdir -p $HOME/.backup_dotfiles $HOME/.backup_dotfiles/vscode
for file in $files; do
  cp $HOME/$file $HOME/.backup_dotfiles/
done
for file in $vscode_files; do
  cp "$vscode_settings_folder/$file" $HOME/.backup_dotfiles/vscode/
done

#echo "copying new dotfiles"
# for file in $files; do
#   cp ./$file $HOME/$file
# done
# for file in $vscode_files; do
#   cp ./$file "$vscode_settings_folder/$file"
# done
