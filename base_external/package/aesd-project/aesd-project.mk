
##############################################################
#
# AESD-PROJECT
#
##############################################################

AESD_PROJECT_VERSION = b3f9b7102e1a578906fd316460579d7d3d2e9760
AESD_PROJECT_SITE = https://github.com/cu-ecen-5013/Mohit-Amogh-Final-ProjectSource
AESD_PROJECT_SITE_METHOD = git

define AESD_PROJECT_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

#TODO: Add required executables or scripts below
define AESD_PROJECT_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/test_src/hello_world/hello_world $(TARGET_DIR)/bin
endef


$(eval $(generic-package))
