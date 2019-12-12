
##############################################################
#
# AESD-PROJECT
#
##############################################################

AESD_PROJECT_VERSION = 12521b2b09a811f10a35c1256e021a0707883825
AESD_PROJECT_SITE = git@github.com:cu-ecen-5013/Mohit-Amogh-Final-ProjectSource.git
# AESD_PROJECT_SITE = https://github.com/cu-ecen-5013/Mohit-Amogh-Final-ProjectSource
AESD_PROJECT_SITE_METHOD = git

define AESD_PROJECT_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define AESD_PROJECT_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/bbb_main $(TARGET_DIR)/bin
endef

$(eval $(generic-package))
