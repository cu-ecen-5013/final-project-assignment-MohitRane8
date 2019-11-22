
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents - DONE
AESD_ASSIGNMENTS_VERSION = b3f9b7102e1a578906fd316460579d7d3d2e9760
AESD_ASSIGNMENTS_SITE = https://github.com/cu-ecen-5013/final-project-assignment-MohitRane8
AESD_ASSIGNMENTS_SITE_METHOD = git

define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

#TODO: Add required executables or scripts below
define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/test_src/hello_world/hello_world $(TARGET_DIR)/bin
endef


$(eval $(generic-package))
