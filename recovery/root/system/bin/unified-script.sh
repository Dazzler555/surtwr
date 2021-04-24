#!/system/bin/sh
# This script is needed to automatically set device props.

load_surya()
{
    resetprop "ro.product.odm.model" "M2007J20CG"
    resetprop "ro.product.system.model" "M2007J20CG"
    resetprop "ro.product.vendor.model" "M2007J20CG"
    resetprop "ro.product.name" "surya"
    resetprop "ro.build.product" "surya"
    resetprop "ro.product.device" "surya"
    resetprop "ro.product.board" "surya"
}

load_karna()
{
    resetprop "ro.product.odm.model" "M2007J20CI"
    resetprop "ro.product.system.model" "M2007J20CI"
    resetprop "ro.product.vendor.model" "M2007J20CI"
    resetprop "ro.product.name" "karna"
    resetprop "ro.build.product" "karna"
    resetprop "ro.product.device" "karna"
    resetprop "ro.product.board" "karna"
}

project=$(getprop ro.boot.hwname)
echo $project

case $project in
    "karna")
        load_karna
        ;;
    *)
        load_surya
        ;;
esac

exit 0
