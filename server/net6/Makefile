include $(TOPDIR)/rules.mk

PKG_NAME:=net6
PKG_VERSION:=1
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/net6
  TITLE:= net6 script.
  MAINTAINER:=Uola Project OpenWrt
endef

define Package/net6/description
net6 script.
endef

define Build/Compile
endef

define Package/net6/install
	$(INSTALL_DIR) $(1)/etc/hotplug.d/iface
	$(INSTALL_BIN) ./files/99-ipv6 $(1)/etc/hotplug.d/iface/99-ipv6
endef

$(eval $(call BuildPackage,net6))
