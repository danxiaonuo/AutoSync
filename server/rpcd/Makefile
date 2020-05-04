include $(TOPDIR)/rules.mk

PKG_NAME:=rpcd
PKG_VERSION:=1
PKG_RELEASE:=1
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/rpcd
  TITLE:= rpcd script.
  MAINTAINER:=Uola Project OpenWrt
  DEPENDS:=+luci-app-smartdns +luci-app-webadmin +luci-app-frpc +luci-app-serverchan 
endef

define Package/rpcd/description
rpcd script.
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/postinst
#!/bin/sh
rm -rf /share/rpcd/acl.d/*
rm -rf /usr/share/rpcd/acl.d/unauthenticated.json
exit 0
endef

define Package/rpcd/install
	$(INSTALL_DIR) $(1)/usr/share/rpcd/acl.d
	mv -f $(PKG_BUILD_DIR)/acl.d/* $(1)/usr/share/rpcd/acl.d
endef

$(eval $(call BuildPackage,rpcd))
