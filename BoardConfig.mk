LOCAL_PATH := device/lenovo/A526
USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lenovo/A526/BoardConfigVendor.mk

#board info
TARGET_BOARD_PLATFORM := mt6582
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

#boot
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := A526
TARGET_NO_FACTORYIMAGE := true
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/boot.mk

#blob hacks
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# BT
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/micromax/a106/bluetooth

#kernel
BOARD_KERNEL_CMDLINE :=
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel

#Use CM PowerHAL by default
TARGET_POWERHAL_VARIANT := omni

#partition info
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 943718400
BOARD_USERDATAIMAGE_PARTITION_SIZE := 968884224
BOARD_FLASH_BLOCK_SIZE := 512

#set proper ramdisk address
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100

#recovery stuff
TARGET_RECOVERY_INITRC := $(LOCAL_PATH)/recovery/recovery.rc
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/fstab.mt6582
TARGET_PREBUILT_RECOVERY_KERNEL := $(LOCAL_PATH)/kernel
BOARD_HAS_NO_SELECT_BUTTON := true

#patches from C3C0
#CWM_EMMC_BOOT_DEVICE_NAME := /dev/bootimg
#CWM_EMMC_BOOT_DEVICE_SIZE := 0x001000000
#CWM_EMMC_RECOVERY_DEVICE_NAME := /dev/recovery
#CWM_EMMC_RECOVERY_DEVICE_SIZE := 0x001000000
#CWM_EMMC_UBOOT_DEVICE_NAME := /dev/uboot
#CWM_EMMC_UBOOT_DEVICE_SIZE := 0x00060000

#flipped screen
BOARD_HAS_FLIPPED_SCREEN := true

#neon cflags for cortex-a7
TARGET_GLOBAL_CFLAGS   += -mcpu=cortex-a7 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mcpu=cortex-a7 -mfpu=neon -mfloat-abi=softfp

#user image is ext4
TARGET_USERIMAGES_USE_EXT4:=true

# EGL settings
BOARD_EGL_CFG := device/lenovo/A526/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true

# wifi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_WLAN_DEVICE := mediatek
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM:="/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_P2P:=P2P

# Allow more than one lun file
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun%d/file"
#TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/mt_usb/musb-hdrc.0/gadget/lun%d/file"




###########
#Carliv3.3#
###########
RECOVERY_VARIANT := carliv
BOARD_HAS_MTK:=true
BOARD_NEEDS_MTK_GETSIZE := true
DEVICE_RESOLUTION := 480x800

#######
#philz#
#######
#BOARD_USE_MTK_LAYOUT := true
#BOARD_MTK_BOOT_LABEL := "/bootimg"
#BRIGHTNESS_SYS_FILE := "/sys/class/leds/lcd-backlight/brightness"
#TARGET_SCREEN_HEIGHT := 800
#TARGET_SCREEN_WIDTH := 480


########################
#TeamWinRecoveryProject#
########################

DEVICE_RESOLUTION := 480x800
  dual storage
TW_INTERNAL_STORAGE_PATH := "/emmc"
TW_INTERNAL_STORAGE_MOUNT_POINT := "emmc"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
  flipped screen
RECOVERY_TOUCHSCREEN_SWAP_XY := true
RECOVERY_TOUCHSCREEN_FLIP_Y := true
RECOVERY_TOUCHSCREEN_FLIP_X := true
BOARD_HAS_FLIPPED_SCREEN := true
