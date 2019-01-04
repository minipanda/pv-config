TARGET_OS := linux
TARGET_OS_FLAVOUR := generic
TARGET_LIBC := eglibc

TARGET_ARCH := arm64

TARGET_CROSS := $(ALCHEMY_WORKSPACE_DIR)/toolchains/aarch64-linux-musl/bin/aarch64-linux-musl-
TARGET_UBOOT_CROSS := $(ALCHEMY_WORKSPACE_DIR)/toolchains/aarch64-linux-musl/bin/aarch64-linux-musl-
TARGET_LINUX_CROSS := $(ALCHEMY_WORKSPACE_DIR)/toolchains/aarch64-linux-musl/bin/aarch64-linux-musl-

TARGET_GLOBAL_CFLAGS += 

TARGET_LINUX_IMAGE := uImage

HOST_CPP = cc -E

TARGET_IMAGE_FORMAT := cpio
TARGET_FINAL_MODE := firmware

TARGET_SKEL_DIRS := $(TOP_DIR)/trail/bubblegum/config/

TARGET_UBI_IMAGE_OPTIONS := \
       --mkubifs="-m 1 -e 65408 -c 247 -x favor_lzo -F" \
       --ubinize="-p 0x10000 -m 1 $(TARGET_CONFIG_DIR)/ubinize.config"
