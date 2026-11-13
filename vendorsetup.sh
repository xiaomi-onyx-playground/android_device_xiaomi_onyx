#!/bin/bash

echo '5g icon path'
	cd frameworks/opt/telephony
	git fetch https://github.com/xiaomi-onyx-playground/luna_frameworks_opt_telephony.git
	git cherry-pick 403e28cfe85917cfe00a34e22e81c54aca176d31
	croot

        cd frameworks/base
        git fetch https://github.com/xiaomi-onyx-playground/luna_frameworks_base.git
        git cherry-pick 4948b672e5bc206ce7029f8603244d3cbde20b4f
        croot

echo 'Cloning BCR'
	git clone https://github.com/xiaomi-onyx-playground/android_vendor_bcr.git -b lineage-23.2 vendor/bcr

echo 'Cloning Dolby'
	git clone https://github.com/xiaomi-onyx-playground/android_vendor_lunaris_dolby -b lineage-23.2 vendor/lunaris/dolby

echo 'Patch DolbyAudio'
	cd frameworks/av
	git fetch https://github.com/xiaomi-onyx-playground/frameworks_av.git
	git cherry-pick 52b3acaa609f071580918add5c527f10b1e2768e
	croot

echo 'Cloning Hardware'
        git clone  https://github.com/xiaomi-onyx-playground/android_hardware_xiaomi.git -b lineage-23.2 hardware/xiaomi

echo 'Cloning MiuiCamera'
	git clone https://github.com/xiaomi-onyx-playground/android_vendor_xiaomi_onyx-leicacamera.git -b lineage-23.2 vendor/xiaomi/onyx-leicacamera

echo 'Cloning NotGameTurbo'
	git clone https://github.com/xiaomi-onyx-playground/android_packages_apps_NotGameTurbo.git -b lineage-23.2 packages/apps/NotGameTurbo

echo 'Cloning Kernel'
	git clone https://github.com/xiaomi-onyx-playground/android_kernel_xiaomi_sm8735.git -b lineage-23.2 kernel/xiaomi/sm8735
	git clone https://github.com/xiaomi-onyx-playground/android_kernel_xiaomi_sm8735-devicetrees.git -b lineage-23.2 kernel/xiaomi/sm8735-devicetrees
	git clone https://github.com/xiaomi-onyx-playground/android_kernel_xiaomi_sm8735-modules.git -b lineage-23.2 kernel/xiaomi/sm8735-modules

echo 'Cloning Priv-keys'
	git clone  https://github.com/xiaomi-onyx-playground/android_vendor_sharmagrit-priv_keys.git -b lineage-23.2 vendor/sharmagrit-priv/keys

echo 'Cloning Vendor'
	git clone https://github.com/xiaomi-onyx-playground/android_vendor_xiaomi_onyx.git -b lineage-23.2 vendor/xiaomi/onyx

echo "vendorsetup.sh execution complete."
