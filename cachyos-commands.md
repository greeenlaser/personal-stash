#make file runnable
chmod +x file

#keep last N versions of packages
paccache -r -k N

#check bios update state
1) fwupdmgr get-devices
2) fwupdmgr update

#rename a file or folder
rename 'before' 'after' *

#make a file line endings linux-appropriate
sed -i 's/\r$//' filename
