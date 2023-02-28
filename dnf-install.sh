#!/bin/bash
dnf install -y \
https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm \
gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel \
lame\* --exclude=lame-devel \
akmod-v4l2loopback \
autoconf \
automake \
bat  \
cairo-devel \
chrony \
copyq \
curl  \
dbus-devel \
dunst \
exa  \
fd-find \
feh  \
fish \
flameshot \
flatpak \
fontconfig \
gcc  \
git  \
google-noto-emoji-color-fonts \
gtk3-devel \
htop \
i3 \
ImageMagick \
kitty \
kmod-v4l2loopback \
libxcb-devel \
libXinerama  \
libxkbcommon-devel  \
libxkbcommon-x11-devel  \
libXrandr \
libjpeg-turbo-devel \
libev-devel \
libtool \
lxappearance  \
lxpolkit  \
ncurses-devel \
neovim \
network-manager-applet \
nitrogen \
openssl-devel \
offlineimpa \
pam-devel  \
picom  \
pipewire \
pipewire-alsa \
pipewire-pulseaudio \
pipewire-utils \
pkgconf \
polybar \
pulseaudio-libs-devel \
python3-pip \
qalc \
qpwgraph \
ranger \
rclone \
rofi \
rofi-devel \
sxhkd \
util-linux-user \
vim  \
volumeicon \
wget  \
wireplumber \
xclip \
xdotool \
xdpyinfo \
xcb-util-image-devel  \
xcb-util-xrm-devel \
setxkbmap \
xorg-x11-server-Xorg \
xrandr \
xrdb \
xset \
xsel \
xss-lock \
v4l2loopback \
vlc \
&&

dnf config-manager --add-repo https://rpm.librewolf.net/librewolf-repo.repo &&
dnf install librewolf &&
dnf group upgrade --with-optional Multimedia -y &&
dnf group install --with-optional virtualization -y &&

