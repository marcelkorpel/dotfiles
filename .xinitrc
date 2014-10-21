#!/bin/sh

#xclock -geometry 50x50-1+1 &
#schedtool -I -p SCHED_ISO -n -5 -e firefox &
#nice --2 firefox &
#feh --bg-center bkgr/01705_sunsetinfrontofme_1280x1024.jpg
#feh --bg-center ngimages/backgr.jpg
#feh --bg-center bkgr/Vincent.jpg
#exec icewm
#exec xfwm4
#exec xterm -geometry 80x66+0+0 -name login

feh --no-fehbg --bg-center "/mnt/windows/Documents and Settings/Gebruiker/Mijn documenten/Mijn afbeeldingen/Wallpapers 1280x1024/02718_stockholm_1280x1024.jpg" &
claws-mail &
firefox &
xset m 5/6 1 &
xmodmap ~/.Xmodmap &
urxvt -geometry 100x52+642+0 &
urxvt -geometry 100x52+0+0 &
numlockx &
exec icewm
