#!/bin/bash
VERSION=0.1.0-5

sed -i "s/^.*Version.*$/Version: ${VERSION}/" titan-mcu-util/DEBIAN/control
dpkg-deb -b titan-mcu-util titan-mcu-util_"$VERSION"_riscv64.deb
