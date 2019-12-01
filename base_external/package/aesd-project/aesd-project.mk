
##############################################################
#
# AESD-PROJECT
#
##############################################################

AESD_PROJECT_VERSION = 5721c407173eb1918e034411bfdeed57f4660c69 
# AESD_PROJECT_SITE = git@github.com:cu-ecen-5013/Mohit-Amogh-Final-ProjectSource.git
AESD_PROJECT_SITE = https://github.com/cu-ecen-5013/Mohit-Amogh-Final-ProjectSource
AESD_PROJECT_SITE_METHOD = git

# AESD_PROJECT_OVERRIDE_SRCDIR = /home/mohit/Documents/Mohit-Amogh-Final-ProjectSource

define AESD_PROJECT_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define AESD_PROJECT_INSTALL_TARGET_CMDS
	# $(INSTALL) -m 0755 $(@D)/uls_sensor $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/test_src/basic_uart/basic_uart $(TARGET_DIR)/bin
endef

$(eval $(generic-package))
