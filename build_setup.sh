## starting of script
cd ../
echo "starting setting up device side repo...."
echo "Kernel tree.."
git clone --depth 1 https://github.com/GhostMaster69-dev/android_kernel_xiaomi_vince.git -b 12 kernel/xiaomi/vince
echo "..."
echo "..."
echo "..."
echo "..."
echo " Now some miscellaneous things"
rm -rf hardware/qcom-caf/wlan && git clone https://github.com/andro-sapien/hardware_qcom_wlan.git -b 12 hardware/qcom-caf/wlan
echo "..."
echo "..."
echo "..."
echo "..."
echo " clang - 15.0.0"
git clone --depth 1 https://gitlab.com/GhostMaster69-dev/Cosmic-Clang.git prebuilts/clang/host/linux-x86/clang-cosmic
echo "finishing...."
echo "All Done."
