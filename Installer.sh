#!/bin/zsh

printf "Installing Hydrogen"

curl -o Hydrogen_MacOS.zip https://cdn.discordapp.com/attachments/1048239224618496011/1062825728598610021/Hydrogen_MacOS.zip
unzip -o -qq Hydrogen_MacOS.zip
rm -rf /Applications/Hydrogen.app
mv "Hydrogen MacOS.app" /Applications/Hydrogen.app
rm Hydrogen_MacOS.zip
cp /Applications/Roblox.app/Contents/MacOS/RobloxPlayerBack /Applications/Roblox.app/Contents/MacOS/RobloxPlayer
cp /Applications/Hydrogen.app/Contents/Resources/libHydrogen.dylib /Applications/Roblox.app/Contents/MacOS/libHydrogen.dylib
cp /Applications/Roblox.app/Contents/MacOS/RobloxPlayer /Applications/Roblox.app/Contents/MacOS/RobloxPlayerBack
/Applications/Hydrogen.app/Contents/Resources/insert_dylib --strip-codesig --all-yes /Applications/Roblox.app/Contents/MacOS/libHydrogen.dylib /Applications/Roblox.app/Contents/MacOS/RobloxPlayerBack /Applications/Roblox.app/Contents/MacOS/RobloxPlayer
mkdir /Users/Shared/Hydrogen
echo Hydrogen has been installed!
