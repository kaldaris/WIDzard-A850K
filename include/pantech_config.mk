###############################################################################
# 
#                    APQ8064 PANTECH MODEL config makefile
#
###############################################################################
# 2012-03-21 choiseulkee : Created
###############################################################################
TARGET_BUILD_MODEL_NAME=IM-A850K#
TARGET_BUILD_VER_PREFIX=S0000#
TARGET_BUILD_VERSION=$(TARGET_BUILD_VER_PREFIX)000# 2013-09-10 RC-5
TARGET_BUILD_VERSION_HIDDEN=$(TARGET_BUILD_VERSION)# hidden version
TARGET_BUILD_FS_VER=0# android userdata ext4 filesystem version
TARGET_BUILD_NV_VER=0# mdm efs version
TARGET_BUILD_CARRIER=SKT-KOR

TARGET_BUILD_BRAND=VEGA
TARGET_BUILD_BRAND_MODEL_NAME=$(TARGET_BUILD_BRAND)_$(TARGET_BUILD_MODEL_NAME)

###############################################################################
# OEM_ environment variable
###############################################################################
PANTECH_STORAGE_USE_TYPE=PANTECH_STORAGE_INTERNAL_EMUL

PANTECH_GLOBAL_FLAGS= -DPROJECT_NAME=\"ef49k\"
PANTECH_GLOBAL_FLAGS+= -DMODEL_NAME=\"$(TARGET_BUILD_MODEL_NAME)\"
PANTECH_GLOBAL_FLAGS+= -DPANTECH_BUILD_VER=\"$(TARGET_BUILD_VERSION)\"
PANTECH_GLOBAL_FLAGS+= -DPANTECH_FS_VER=$(TARGET_BUILD_FS_VER)
PANTECH_GLOBAL_FLAGS+= -DPANTECH_EFS_VER=$(TARGET_BUILD_NV_VER)

PANTECH_KERNEL_FLAGS:=$(PANTECH_GLOBAL_FLAGS)
