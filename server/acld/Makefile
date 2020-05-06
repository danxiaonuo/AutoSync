include $(TOPDIR)/rules.mk

PKG_NAME:=acld
PKG_VERSION:=1
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  TITLE:= acld script.
  MAINTAINER:=Uola Project OpenWrt
  DEPENDS:=+clean
endef

define Package/$(PKG_NAME)/description
acld script.
endef

define Build/Compile
endef


define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/share/rpcd/acl.d
	$(CP) ./files/*.json $(1)/usr/share/rpcd/acl.d
endef

$(eval $(call BuildPackage,acld))
