include $(TOPDIR)/rules.mk

PKG_NAME:=clean
PKG_VERSION:=1
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  TITLE:= clean script.
  MAINTAINER:=Uola Project OpenWrt
  DEPENDS:=+luci-app-smartdns +luci-app-webadmin +luci-app-frpc +luci-app-serverchan 
endef

define Package/$(PKG_NAME)/description
clean script.
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/install
       $(INSTALL_DIR) $(1)/share/rpcd/acl.d
       rm -rf $(1)/share/rpcd/acl.d/*
       $(INSTALL_DIR) $(1)/usr/share/rpcd/acl.d
       rm -rf $(1)/usr/share/rpcd/acl.d/luci-app-frpc.json
       rm -rf $(1)/usr/share/rpcd/acl.d/luci-app-smartdns.json
       rm -rf $(1)/usr/share/rpcd/acl.d/unauthenticated.json
       
endef

$(eval $(call BuildPackage,clean))
