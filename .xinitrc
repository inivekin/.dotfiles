#~/.xinitrc
#[[ -f ~/.Xdefaults ]] && xrdb -merge ~/.Xdefaults
exec synclient TapButton3=0 &
exec unclutter -idle 10 -root -grab &
exec xinput set-prop 9 "Synaptics Scrolling Distance" -73 -73 &
