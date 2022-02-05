rm -rf device/qcom/sepolicy-legacy-um

git clone https://github.com/julival25/platform_hardware_qcom_display -b 12.x-caf-msm8998  hardware/qcom-caf/msm8998/display
git clone https://github.com/julival25/hardware_qcom-caf_audio_msm8998 -b snow hardware/qcom-caf/msm8998/audio
git clone https://github.com/julival25/hardware-qcom-caf-msm8998_media -b master hardware/qcom-caf/msm8998/media
git clone https://github.com/F2LX/kernel_xiaomi_sdm660 -b kernel-eas kernel/xiaomi/tulip
git clone https://github.com/julival25/android_device_qcom_sepolicy-legacy-um -b x device/qcom/sepolicy-legacy-um
git clone https://github.com/LineageOS/android_external_ant-wireless_antradio-library.git -b lineage-19.0 external/ant-wireless/antradio-library

export SELINUX_IGNORE_NEVERALLOWS=true
