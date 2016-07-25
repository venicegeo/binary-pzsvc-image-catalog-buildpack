# OSSIM Binary Buildpack

This buildpack contains binaries of the OSSIM image processing package (available at https://github.com/ossimlabs/ossim).  For more details on binary buildpacks, please see the README-BUILDPACK.md file, found in this directory.  The actual OSSIM code used by this buildpack is stored in the ossim.tar.gz file in the vendor directory.

The simplest way to update this buildpack to the latest ossim build:
- install vagrant
- call "vagrant up" from inside the vendor directory.  This will update ossim.tar.gz
- if you're not otherwise using vagrant, call "vagrant destroy -f default" from that directory to eliminate the resulting vagrant instance.  If you are using vagrant for other things, that may not work properly, but you can handle instances yourself.

## Reporting Issues

To report an issue with the buildpack, open an issue on this GitHub repo.
