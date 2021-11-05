TARGET_BOARD_PLATFORM := SDM845
# Architecture
TARGET_ARCH := arm64 # основная архитектура процессора
TARGET_ARCH_VARIANT := armv8-a 
TARGET_CPU_ABI := arm64-v8a # Application Binary Interface
TARGET_CPU_VARIANT := cortex-a75 # указывает на тип ядра процессора
# Kernel
TARGET_KERNEL_SOURCE := kernel/mirea/it11
TARGET_KERNEL_CONFIG := it_defconfig
# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 100663296 # размер образа ядра в байтах
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 5242880 # размер образа рекавери в байтах
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4294967296 # размер образа системы в байтах
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1294991360 # размер образа для хранения данных пользователя в байтах
BOARD_HAS_NO_CACHE_PARTITION := true

AB_OTA_UPDATER := true # активация режима обновления по схеме A/B
AB_OTA_PARTITIONS := \ # список разделов, входящие в обновление по OTA
  boot \
  system \
  vendor
PRODUCT_PACKAGES += \ 
  update_engine \
  update_verifier
TARGET_NO_RECOVERY := true # отключение наличия раздела recovery
BOARD_USES_RECOVERY_AS_BOOT := true 

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wl12xx
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_wl12xx
#BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := wlan0
WIFI_DRIVER_MODULE_NAME := rt2800usb
WIFI_DRIVER_MODULE_PATH :=
/system/lib/modules/rt2800usb.ko
BOARD_HAVE_BLUETOOTH := true


