include $(TOPDIR)/rules.mk

PKG_NAME:=acld
PKG_VERSION:=1
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  TITLE:= acld script.
  MAINTAINER:=Uola Project OpenWrt
  DEPENDS:=+rpcd +luci-app-smartdns +luci-app-webadmin +luci-app-frpc +luci-app-serverchan 
endef

define Package/$(PKG_NAME)/description
acld script.
endef

define Build/Compile
endef


define Package/$(PKG_NAME)/install
        $(INSTALL_DIR) $(1)/etc/uci-defaults
	$(INSTALL_BIN) ./zzz-modify-acl $(1)/etc/uci-defaults/zzz-modify-acl
	$(INSTALL_DIR) $(1)/usr/share/rpcd/acl.d
	$(CP) ./files/*.json $(1)/usr/share/rpcd/acl.d
endef

$(eval $(call BuildPackage,acld))
