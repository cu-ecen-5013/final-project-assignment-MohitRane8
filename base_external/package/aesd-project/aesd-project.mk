
##############################################################
#
# AESD-PROJECT
#
##############################################################

AESD_PROJECT_VERSION = c2332b38a6664d9f6403236f936ab8916c91dbcb 
# AESD_PROJECT_SITE = git@github.com:cu-ecen-5013/Mohit-Amogh-Final-ProjectSource.git
AESD_PROJECT_SITE = https://github.com/cu-ecen-5013/Mohit-Amogh-Final-ProjectSource
AESD_PROJECT_SITE_METHOD = git

define AESD_PROJECT_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define AESD_PROJECT_INSTALL_TARGET_CMDS
	# $(INSTALL) -m 0755 $(@D)/uls_sensor $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/test_src/lux_sensor/lux_sensor $(TARGET_DIR)/bin
endef

$(eval $(generic-package))
