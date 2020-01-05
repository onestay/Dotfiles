#!/bin/sh

rclone copy gd:/Passwords.kdbx $HOME/Documents/gdpass
cp $HOME/Documents/Passwords.kdbx $HOME/Documents/Passwords.kdbx.backup
keepassxc-cli merge -s $HOME/Documents/Passwords.kdbx $HOME/Documents/gdpass/Passwords.kdbx
rclone copy $HOME/Documents/Passwords.kdbx gd:/
rm -rf $HOME/Documents/gdpass
exit 0
