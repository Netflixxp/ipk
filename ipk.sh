#!/bin/bash

# 科学上网插件依赖
svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/luci-app-openclash
svn co https://github.com/xiaorouji/openwrt-passwall/branches/luci/luci-app-passwall package/luci-app-passwall
svn co https://github.com/xiaorouji/openwrt-passwall2/trunk/luci-app-passwall2 package/luci-app-passwall2
svn co https://github.com/fw876/helloworld/trunk/luci-app-ssr-plus package/luci-app-ssr-plus
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/sagernet-core package/sagernet-core
svn co https://github.com/jerrykuku/luci-app-vssr/trunk package/luci-app-vssr
svn co https://github.com/jerrykuku/lua-maxminddb/trunk package/lua-maxminddb


# sagernet-core
# sed -i 's|$(LN) v2ray $(1)/usr/bin/xray|#$(LN) v2ray $(1)/usr/bin/xray|g' package/sagernet-core/Makefile
# sed -i 's|CONFLICTS:=v2ray-core xray-core|#CONFLICTS:=v2ray-core xray-core|g' package/sagernet-core/Makefile

# 编译 po2lmo (如果有po2lmo可跳过)
pushd package/luci-app-openclash/tools/po2lmo
make && sudo make install
popd
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/brook package/brook
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/chinadns-ng package/chinadns-ng
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/tcping package/tcping
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/trojan-go package/trojan-go
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/trojan-plus package/trojan-plus
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/ssocks package/ssocks
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/hysteria package/hysteria
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/naiveproxy package/naiveproxy
svn co https://github.com/fw876/helloworld/trunk/xray-core package/xray-core
svn co https://github.com/fw876/helloworld/trunk/simple-obfs package/simple-obfs
svn co https://github.com/fw876/helloworld/trunk/trojan package/trojan
svn co https://github.com/fw876/helloworld/trunk/xray-plugin package/xray-plugin
svn co https://github.com/fw876/helloworld/trunk/shadowsocks-rust package/shadowsocks-rust
svn co https://github.com/fw876/helloworld/trunk/v2ray-plugin package/v2ray-plugin
svn co https://github.com/fw876/helloworld/trunk/v2ray-core package/v2ray-core
svn co https://github.com/fw876/helloworld/trunk/shadowsocksr-libev package/shadowsocksr-libev
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-eqos package/luci-app-eqos
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/dns2socks package/dns2socks
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/ipt2socks package/ipt2socks
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/microsocks package/microsocks 
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/pdnsd-alt package/pdnsd-alt
svn co https://github.com/kenzok8/openwrt-packages/trunk/gn package/gn
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/dns2tcp package/dns2tcp
svn co https://github.com/fw876/helloworld/trunk/lua-neturl package/lua-neturl
svn co https://github.com/fw876/helloworld/trunk/redsocks2 package/redsocks2
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/pdnsd-alt package/pdnsd-alt
svn co https://github.com/fw876/helloworld/trunk/v2ray-geodata package/v2ray-geodata

./scripts/feeds update -a
./scripts/feeds install -a -f
