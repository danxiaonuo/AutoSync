include $(TOPDIR)/rules.mk

PKG_NAME:=rpcd
PKG_VERSION:=1
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/rpcd
  TITLE:= rpcd script.
  MAINTAINER:=Uola Project OpenWrt
endef

define Package/rpcd/description
rpcd script.
endef

define Build/Compile
endef

define Package/rpcd/install
	$(INSTALL_DIR) $(1)/etc/uci-defaults
	$(INSTALL_BIN) ./zzz-modify-rpcd $(1)/etc/uci-defaults/zzz-modify-rpcd
	cp -rfP ./acl.d/* $(1)/usr/share/rpcd/acl.d/
endef

$(eval $(call BuildPackage,rpcd))
