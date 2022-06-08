################################################################################
#
# ingenic-osdrv-t21
#
################################################################################

INGENIC_OSDRV_T21_VERSION =
INGENIC_OSDRV_T21_SITE =
INGENIC_OSDRV_T21_LICENSE = MIT
INGENIC_OSDRV_T21_LICENSE_FILES = LICENSE

define INGENIC_OSDRV_T21_INSTALL_TARGET_CMDS
	$(INSTALL) -m 755 -d $(TARGET_DIR)/etc/init.d
	$(INSTALL) -m 755 -t $(TARGET_DIR)/etc/init.d $(BR2_EXTERNAL_INGENIC_PATH)/package/ingenic-osdrv-t21/files/script/S95ingenic

	$(INSTALL) -m 755 -d $(TARGET_DIR)/etc/sensor
	$(INSTALL) -m 644 -t $(TARGET_DIR)/etc/sensor $(BR2_EXTERNAL_INGENIC_PATH)/package/ingenic-osdrv-t21/files/sensor/params/*.bin

	$(INSTALL) -m 755 -d $(TARGET_DIR)/lib/modules/3.10.14__isvp_turkey_1.0__/ingenic
	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/3.10.14__isvp_turkey_1.0__/ingenic $(BR2_EXTERNAL_INGENIC_PATH)/package/ingenic-osdrv-t21/files/kmod/*.ko

	$(INSTALL) -m 755 -d $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 755 -t $(TARGET_DIR)/usr/bin $(BR2_EXTERNAL_INGENIC_PATH)/package/ingenic-osdrv-t21/files/script/load*
	# $(INSTALL) -m 755 -t $(TARGET_DIR)/usr/bin $(BR2_EXTERNAL_INGENIC_PATH)/package/ingenic-osdrv-t21/files/script/ircut_demo
	# $(INSTALL) -m 755 -t $(TARGET_DIR)/usr/bin $(BR2_EXTERNAL_INGENIC_PATH)/package/ingenic-osdrv-t21/files/sample/*

	# $(INSTALL) -m 755 -d $(TARGET_DIR)/usr/lib/sensors/params
	# $(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib/sensors/params $(BR2_EXTERNAL_INGENIC_PATH)/package/ingenic-osdrv-t21/files/sensor/params/*.bin

	# $(INSTALL) -m 755 -d $(TARGET_DIR)/usr/lib/sensors/params/WDR
	# $(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib/sensors/params/WDR $(BR2_EXTERNAL_INGENIC_PATH)/package/ingenic-osdrv-t21/files/sensor/params/WDR/*.bin

	$(INSTALL) -m 755 -d $(TARGET_DIR)/usr/lib
	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib/ $(BR2_EXTERNAL_INGENIC_PATH)/package/ingenic-osdrv-t21/files/lib/*.so
endef

$(eval $(generic-package))
