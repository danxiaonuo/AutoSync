include $(TOPDIR)/rules.mk

PKG_NAME:=clean
PKG_VERSION:=1
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  TITLE:= clean script.
  MAINTAINER:=Uola Project OpenWrt
  DEPENDS:=+rpcd +luci-app-smartdns +luci-app-webadmin +luci-app-frpc +luci-app-serverchan 
endef

define Package/$(PKG_NAME)/description
clean script.
endef

define Build/Compile
endef


define Package/$(PKG_NAME)/install
       $(INSTALL_DIR) $(1)/etc/uci-defaults
       $(INSTALL_BIN) ./zzz-files-clean $(1)/etc/uci-defaults/zzz-files-clean
endef

$(eval $(call BuildPackage,clean))
