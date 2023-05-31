#!/bin/sh

xorriso -joliet "on" -as mkisofs ZealOS/ -o FKey-ZealOS.iso
# TempleOS require Redseafs so xorriso can't be used
# xorriso -joliet "on" -as mkisofs TempleOS/ -o FKey-TempleOS.iso
