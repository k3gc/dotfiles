#!/usr/bin/sh

#export RICETHEME=$(<$HOME/.config/bspwm/rice.cfg)

pkill sxhkd
sxhkd -c $HOME/.config/bspwm/sxhkdrc &

xsetroot -cursor_name left_ptr &
picom --config ~/.config/bspwm/picom.conf &
dunst -conf ~/.config/dunst/dunstrc &

#$HOME/.fehbg &
nitrogen --restore &
$HOME/.config/bspwm/miku/polybar/launch.sh &
$HOME/.config/bspwm/scripts/low_bat_notifier.sh &
$HOME/.screenlayout/screen.sh &

nm-applet --no-agent &
setxkbmap -option grp:alt_shift_toggle us


SECOND_MONITOR_SIDE="left"
THIRD_MONITOR_SIDE="rigth"

Get Monitors
PRINCIPAL=$(xrandr | grep primary | awk '{print $1}')
SECOND_MONITOR=$(xrandr | grep connected | awk '{i++}i==2'| awk '{print $1}')
THIRD_MONITOR=$(xrandr | grep connected | awk '{i++}i==3'| awk '{print $1}')

Configure Monitors
if [ "$(xrandr | grep -sw 'connected' | wc -l)" = "2" ]; then
  bspc monitor $(bspc query -M | sed -n 1p) -d I II III IV V VI VII
  bspc monitor $(bspc query -M | sed -n 2p) -d VIII IX X
  #Set Monitors Side and output 
  xrandr --output $SECOND_MONITOR --$SECOND_MONITOR_SIDE-of $PRINCIPAL  
else
  bspc monitor -d I II III IV V VI VII
fi

#bspc monitor -d I II III IV V VI VII
#bspc monitor HDMI-A-0 -d VIII IX X


bspc config border_width         3
bspc config focused_border_color \#02db95 
bspc config normal_border_color \#6ce2e2
bspc config window_gap          12

bspc config split_ratio          0.52
bspc config borderless_monocle   true
bspc config gapless_monocle      true

bspc rule -a Gimp desktop='^2' state=tiled follow=on
bspc rule -a firefox desktop='^4' state=tiled follow=on
bspc rule -a Chromium desktop='^2'
bspc rule -a mplayer2 state=floating
bspc rule -a Kupfer.py focus=on
bspc rule -a Screenkey manage=off
