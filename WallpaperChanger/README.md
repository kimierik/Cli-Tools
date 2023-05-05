# Wallpaper changer wrapper
just a simpler way to change wall paper  
includes setting random wallpaper   

## dependencies
feh  


## useage
put all images you use as wallpapers into 
~/pics/Wallpapers

to make the needed directories run  
```sh
mkdir -p ~/pics/Wallpapers/.current
```


for instructions run 
```sh
./changewp.sh -h
```
  
if you want this as a command that you can use anywhere run 
```sh
sudo cp changewp.sh /usr/bin/changewp
```
i have a startup script that runs  
```sh
feh --bg-scale pics/Wallpapers/.current/*.*
```
this makes it so that when you change the Wallpaper using this script it stays when you restart your computer



