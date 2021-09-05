## starting of script
cd ../
echo "starting setting up device side repo...."
echo "Device tree.."
git clone https://github.com/alanmathew33/device_xiaomi_vince.git -b cherish-stable device/xiaomi/vince
echo "Vendor tree.."
git clone https://github.com/alanmathew33/vendor_xiaomi_vince.git -b Cherish-11 vendor/xiaomi/vince
echo "Kernel tree.."
git clone https://github.com/Blacksuan19/kernel_dark_ages_vince.git -b darky kernel/xiaomi/vince
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
rm -rf hardware/qcom-caf/wlan && git clone https://android.googlesource.com/platform/hardware/qcom/wlan hardware/qcom-caf/wlan
cd kernel/xiaomi/vince && git checkout darky && git revert fec013b9f5bb70c1e51285aa6e042f21f4298447 --no-edit && cd ../../..
echo "finishing...."
echo "All Done."
