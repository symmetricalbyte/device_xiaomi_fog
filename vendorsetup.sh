# Remove Pixel kernel header
rm -rf hardware/google/pixel/kernel_headers/Android.bp

# Clone vendor tree
git clone -b pixelage https://github.com/alternoegraha/vendor_xiaomi_fog vendor/xiaomi/fog

# Clone kernel tree
git clone --depth=1 -b new https://github.com/alternoegraha/wwy_kernel_xiaomi_fog_rebase kernel/xiaomi/fog

# Kernel fixups
cd kernel/xiaomi/fog
rm -rf Android.bp
rm -rf techpack/audio/Android.bp
cd ../../..
