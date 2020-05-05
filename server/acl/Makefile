include $(TOPDIR)/rules.mk

PKG_NAME:=acl
PKG_VERSION:=1
PKG_RELEASE:=1

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

define Package/acl/install
	$(INSTALL_DIR) $(1)/usr/share/rpcd/acl.d
	$(CP) ./files/* $(1)/usr/share/rpcd/acl.d/
endef

$(eval $(call BuildPackage,acl))
