#!/usr/bin/fish
set DIR (cd (dirname (status -f)); and pwd)

codesign -s - --entitlements "$DIR/hypervisor.entitlements" --force (which qemu-system-x86_64)
