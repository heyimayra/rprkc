#!/bin/bash
#
# A simple script (rprkc.sh) for repairing permissions and rebuilding the kextcache along with the prelinked kernel. 
#
# For use on OS X/macOS 10.10 and later.
#
# By: iamkurumi
#
#=====================================================================================================================

echo ''
echo 'RPRKC Script - by iamkurumi'
echo ''
echo ''

sleep 1s

echo '...'
echo ''

sleep 1s

if [[ $(id -u) -ne 0 ]]
then
    echo 'Please run with sudo'
    echo ''
    exit
else
    echo 'Repairing permissions...'
    chmod -Rf 755 /System/Library/Extensions
    chmod -Rf 755 /Library/Extensions
    chown -Rf 0:0 /System/Library/Extensions
    chown -Rf 0:0 /Library/Extensions
    echo 'Done repairing permissions.'
    echo ''

    sleep 2.5s

    echo 'Purging kextcache and prelinked kernel for rebuilding...'
    rm -Rf /System/Library/PrelinkedKernels
    rm -Rf /System/Library/Caches/com.apple.kext.caches
    echo 'Done purging kextcache and prelinked kernel.'
    echo ''

    sleep 2.5s

    echo 'Rebuilding kextcache and prelinked kernel (this might take a while)...'
    echo ''
    touch -f /System/Library/Extensions
    touch -f /Library/Extensions
    kextcache -Boot -U /
    echo ''
    echo 'Done rebuilding kextcache and prelinked kernel.'
    echo ''

    sleep 2.5s

    echo ''
    echo 'Done, please reboot (you may need to reboot twice).'
    echo ''

    sleep 2.5s

    exit
fi
