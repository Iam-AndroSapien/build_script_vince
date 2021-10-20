## starting of script
cd ../
echo "starting setting up device side repo...."
echo "Kernel tree.."
git clone --depth 1 https://github.com/GhostMaster69-dev/android_kernel_xiaomi_vince.git -b stable kernel/xiaomi/vince
echo "..."
echo "..."
echo "Setting up hals...."
rm -rf hardware/qcom-caf/msm8996
git clone https://github.com/andro-sapien/hardware_qcom_audio_msm8996.git hardware/qcom-caf/msm8996/audio
git clone https://github.com/andro-sapien/hardware_qcom_display_msm8996.git hardware/qcom-caf/msm8996/display
git clone https://github.com/andro-sapien/hardware_qcom_media_msm8996.git hardware/qcom-caf/msm8996/media
echo "..."
echo "..."
echo " Now some miscellaneous things"
git clone https://github.com/andro-sapien/vendor_prebuilts_dirac.git vendor/xiaomi/dirac 
git clone --depth 1 https://github.com/andro-sapien/vortex-clang.git prebuilts/clang/host/linux-x86/clang-14
rm -rf hardware/qcom-caf/wlan && git clone https://android.googlesource.com/platform/hardware/qcom/wlan hardware/qcom-caf/wlan
echo "..."
echo "..."
echo "finishing...."
echo "All Done."
