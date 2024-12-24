#! /system/bin/sh

STR=`touch_update`
CMD=`echo ${STR} | busybox cut -d "#" -f2`
CHECK=`echo ${CMD} | busybox cut -d " " -f1`
PA=`echo ${CMD} | busybox cut -d " " -f2`
PB=`echo ${CMD} | busybox cut -d " " -f4`

if [ "${CHECK}" == "JABIL" ]; then
echo "echo ${PA} > ${PB}"
echo ${PA} > ${PB}
else
#PA=/etc/touch/truly/std/7inch/CT4F5294DSN5526_Ref_V0c_D01_20160116_app.bin
#PB=/sys/class/aml_touch/UpgradeFWWithAPP
#echo "echo ${PA} > ${PB}"
#echo ${PA} > ${PB}
echo "No need to update the Touch firmware."
fi
