#!/bin/bash

echo 'Cloning Hardware'
        git clone  https://github.com/xiaomi-onyx-playground/android_hardware_xiaomi.git -b lineage-23.2 hardware/xiaomi

echo 'Cloning Kernel'
	git clone https://github.com/xiaomi-onyx-playground/android_kernel_xiaomi_sm8735.git -b lineage-23.2 kernel/xiaomi/sm8735
	git clone https://github.com/xiaomi-onyx-playground/android_kernel_xiaomi_sm8735-devicetrees.git -b lineage-23.2 kernel/xiaomi/sm8735-devicetrees
	git clone https://github.com/xiaomi-onyx-playground/android_kernel_xiaomi_sm8735-modules.git -b lineage-23.2 kernel/xiaomi/sm8735-modules

echo 'Cloning Priv-keys'
	git clone  https://github.com/xiaomi-onyx-playground/android_vendor_infinity-priv_keys.git -b lineage-23.2 vendor/infinity-priv/keys

echo 'Cloning Vendor'
	git clone https://github.com/xiaomi-onyx-playground/android_vendor_xiaomi_onyx.git -b lineage-23.2 vendor/xiaomi/onyx

echo "vendorsetup.sh execution complete."
