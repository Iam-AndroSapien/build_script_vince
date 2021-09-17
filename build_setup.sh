## starting of script
cd ../
echo "starting setting up device side repo...."
echo "Kernel tree.."
git clone https://github.com/Blacksuan19/kernel_dark_ages_vince.git -b darky kernel/xiaomi/vince
echo "..."
echo "..."
echo " Now some miscellaneous things"
git clone https://github.com/andro-sapien/vendor_prebuilts_dirac.git vendor/xiaomi/dirac 
rm -rf prebuilts/gcc/linux-x86/aarch64/aarch64-elf && git clone --depth 1 https://github.com/andro-sapien/gcc-arm64.git prebuilts/gcc/linux-x86/aarch64/aarch64-elf
rm -rf prebuilts/gcc/linux-x86/arm/arm-eabi && git clone --depth 1 https://github.com/andro-sapien/gcc-arm.git prebuilts/gcc/linux-x86/arm/arm-eabi
rm -rf hardware/qcom-caf/wlan && git clone https://android.googlesource.com/platform/hardware/qcom/wlan hardware/qcom-caf/wlan
echo "..."
echo "..."
echo "finishing...."
echo "All Done."
