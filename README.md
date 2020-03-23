# Device Tree for Xperia XZ1 Compact(Lilac, G8441)

## Description
This repository is pulled/forked from **cryptomilk/android_device_sony_lilac** and is modified for Havoc OS

## Making Pixel Experience/Plus
- Create folder for PE
```
    mkdir pe-10
    cd pe-10
```
- Initialize Repo
```
    # For normal
    repo init -u https://github.com/PixelExperience/manifest -b ten
    # For plus
    repo init -u https://github.com/PixelExperience/manifest -b ten-plus
```
- Create a manifest for Lilac
```
    cd .repo
    mkdir local_manifests
    cd local_manifests
    touch roomservice.xml
```
- Open the 'roomservice.xml' and paste the following
```
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
    <!-- SONY -->
    <project name="cryptomilk/android_kernel_sony_msm8998" path="kernel/sony/msm8998" remote="github" revision="lineage-17.1" />
    <project name="shank03/android_device_sony_common-treble" path="device/sony/common-treble" remote="github" revision="pe-10" />
    <project name="cryptomilk/android_device_sony_yoshino" path="device/sony/yoshino" remote="github" revision="lineage-17.1" />
    <project name="cryptomilk/android_device_sony_lilac" path="device/sony/lilac" remote="github" revision="lineage-17.1" />

    <!-- Pinned blobs for lilac -->
    <project name="cryptomilk/android_vendor_sony_lilac" path="vendor/sony/lilac" remote="github" revision="lineage-17.1" />
</manifest> 
```
- Sync the Repo
```
repo sync -c -j6 --no-clone-bundle -no-tags
```
- Extract vendor blobs

**Make sure you have flashed or have pure sony stock rom; everything should be stock, like first time booted. Boot, recovery, vendor, system should NOT modified.**

Connect your device to computer with USB Debugging enabled.
Then:
```
    cd device/sony/lilac
    ./extract-files.sh
```
- Setup the environment
```
    . build/envsetup.sh
    lunch aosp_lilac-userdebug
```
- Start Building
```
    make -j&(nproc)
```

**Happy Building ! :)** 
