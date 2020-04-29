include $(TOPDIR)/rules.mk

PKG_NAME:=smartdns_config
PKG_VERSION:=1
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/smartdns_config
  TITLE:= smartdns_config script.
  MAINTAINER:=Uola Project OpenWrt
  DEPENDS:=+smartdns +luci-app-smartdns
endef

define Package/smartdns_config/description
smartdns_config script.
endef

define Build/Compile
endef

define Package/smartdns_config/install
	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_BIN) ./files/smartdns $(1)/etc/config/smartdns
	$(INSTALL_DIR) $(1)/var/etc/smartdns
	$(INSTALL_BIN) ./files/smartdns.conf $(1)/var/etc/smartdns/smartdns.conf
endef

$(eval $(call BuildPackage,smartdns_config))
