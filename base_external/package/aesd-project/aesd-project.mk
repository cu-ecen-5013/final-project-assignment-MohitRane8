
##############################################################
#
# AESD-PROJECT
#
##############################################################

AESD_PROJECT_VERSION = 6d2958faa22e30e51520c251a1c076201a626e63 
# AESD_PROJECT_SITE = git@github.com:cu-ecen-5013/Mohit-Amogh-Final-ProjectSource.git
AESD_PROJECT_SITE = https://github.com/cu-ecen-5013/Mohit-Amogh-Final-ProjectSource
AESD_PROJECT_SITE_METHOD = git

define AESD_PROJECT_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define AESD_PROJECT_INSTALL_TARGET_CMDS
	# $(INSTALL) -m 0755 $(@D)/uls_sensor $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/led_blink $(TARGET_DIR)/bin
endef

$(eval $(generic-package))
