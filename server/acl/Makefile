include $(TOPDIR)/rules.mk

PKG_NAME:=acl
PKG_VERSION:=1
PKG_RELEASE:=1
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/acl
  TITLE:= acl script.
  MAINTAINER:=Uola Project OpenWrt
  DEPENDS:=+rpcd +luci-app-smartdns +luci-app-webadmin +luci-app-frpc +luci-app-serverchan 
endef

define Package/acl/description
acl script.
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/postinst
#!/bin/sh
rm -rf /share/acl/acl.d/*
rm -rf /usr/share/rpcd/acl.d/unauthenticated.json
endef

define Package/acl/install
	$(INSTALL_DIR) $(1)/usr/share/acl/acl.d
	cp -pR $(PKG_BUILD_DIR)/files/* $(1)/usr/share/acl/acl.d/
endef

$(eval $(call BuildPackage,acl))
