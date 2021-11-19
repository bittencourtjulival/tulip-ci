#exports 
export ALLOW_MISSING_DEPENDENCIES=true
export WITH_GAPPS=true
export SELINUX_IGNORE_NEVERALLOWS=true

#Sepolicy
rm -rf device/qcom/sepolicy-legacy-um
git clone https://github.com/Allansouzadk/platform_device_qcom_sepolicy-legacy-um device/qcom/sepolicy-legacy-um

#build
lunch spark_tulip-userdebug 
mka bacon -j$(nproc --all)
