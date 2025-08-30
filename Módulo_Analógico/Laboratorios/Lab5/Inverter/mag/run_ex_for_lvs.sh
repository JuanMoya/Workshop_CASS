#!/usr/bin/env bash
echo ${PDK_ROOT:=/usr/share/pdk} > /dev/null
echo ${PDK:=gf180mcuD} > /dev/null
if [ "$#" -ne 1 ] ; then
   echo "Missing argument:  Name of cell"
   exit 1
fi
magic -rcfile $PDK_ROOT/$PDK/libs.tech/magic/$PDK.magicrc -dnull -noconsole << EOF
gds read $1
load $1
select top cell
extract path extfiles
extract no all
extract all
ext2spice lvs
ext2spice -p extfiles
quit
EOF
exit 0
