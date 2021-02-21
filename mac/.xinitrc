# HiDPI scaling by 2 on a 32" 4K monitor
export GDK_SCALE=2
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export PLASMA_USE_QT_SCALING=1
export DESKTOP_SESSION=plasma
gsettings set org.gnome.settings-daemon.plugins.xsettings overrides "[{'Gdk/WindowScalingFactor', <2>}]"
gsettings set org.gnome.desktop.interface scaling-factor 2
exec startplasma-x11
