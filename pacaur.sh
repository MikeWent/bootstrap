#!/bin/bash

mkdir .pacaur_install
cd .pacaur_install
    
if [ ! -n "$(pacman -Qs cower)" ]; then
    echo "Installing cower..."
    sudo pacman -S binutils make gcc fakeroot pkg-config expac yajl git --noconfirm --needed
    curl -o PKGBUILD https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=cower
    makepkg PKGBUILD --skippgpcheck --install --needed
else
    echo "Cower is already installed"
fi

if [ ! -n "$(pacman -Qs pacaur)" ]; then
    echo "Installing pacaur..."
    curl -o PKGBUILD https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=pacaur
    makepkg PKGBUILD --install --needed
else
    echo "Pacaur is already installed"
fi

cd ..
rm -r .pacaur_install
