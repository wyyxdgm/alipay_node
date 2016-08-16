#!/bin/bash
#
iptables -I INPUT -d ss.zmfanqiang.com -p tcp --dport 10314
iptables -I OUTPUT -s 127.0.0.1 -p tcp --sport 10314
iptables -n -v -L -t filter |grep -i 'spt:10314' |awk -F' ' '{print $2}'

# iptables -I OUTPUT -s ss.zmfanqiang.com -p tcp --sport 10002
# iptables -I OUTPUT -s ss.zmfanqiang.com -p tcp --sport 10003
# iptables -I OUTPUT -s ss.zmfanqiang.com -p tcp --sport 10021
# iptables -I OUTPUT -s ss.zmfanqiang.com -p tcp --sport 10000
# iptables -I OUTPUT -s ss.zmfanqiang.com -p tcp --sport 10001
# iptables -I OUTPUT -s ss.zmfanqiang.com -p tcp --sport 10007
# iptables -I OUTPUT -s ss.zmfanqiang.com -p tcp --sport 10306
# iptables -I OUTPUT -s ss.zmfanqiang.com -p tcp --sport 10314
# iptables -I OUTPUT -s ss.zmfanqiang.com -p tcp --sport 10303
# iptables -I OUTPUT -s ss.zmfanqiang.com -p tcp --sport 10322
# iptables -I OUTPUT -s ss.zmfanqiang.com -p tcp --sport 10324
# iptables -I OUTPUT -s ss.zmfanqiang.com -p tcp --sport 10325
# iptables -I OUTPUT -s ss.zmfanqiang.com -p tcp --sport 10326
# iptables -I OUTPUT -s ss.zmfanqiang.com -p tcp --sport 10327
# iptables -I OUTPUT -s ss.zmfanqiang.com -p tcp --sport 10328
# iptables -I OUTPUT -s ss.zmfanqiang.com -p tcp --sport 10329
# iptables -I OUTPUT -s ss.zmfanqiang.com -p tcp --sport 10330
# iptables -I OUTPUT -s ss.zmfanqiang.com -p tcp --sport 10331


# iptables -I INPUT -d ss.zmfanqiang.com -p tcp --dport 10002
# iptables -I INPUT -d ss.zmfanqiang.com -p tcp --dport 10003
# iptables -I INPUT -d ss.zmfanqiang.com -p tcp --dport 10021
# iptables -I INPUT -d ss.zmfanqiang.com -p tcp --dport 10000
# iptables -I INPUT -d ss.zmfanqiang.com -p tcp --dport 10001
# iptables -I INPUT -d ss.zmfanqiang.com -p tcp --dport 10007
# iptables -I INPUT -d ss.zmfanqiang.com -p tcp --dport 10306
# iptables -I INPUT -d ss.zmfanqiang.com -p tcp --dport 10314
# iptables -I INPUT -d ss.zmfanqiang.com -p tcp --dport 10303
# iptables -I INPUT -d ss.zmfanqiang.com -p tcp --dport 10322
# iptables -I INPUT -d ss.zmfanqiang.com -p tcp --dport 10324
# iptables -I INPUT -d ss.zmfanqiang.com -p tcp --dport 10325
# iptables -I INPUT -d ss.zmfanqiang.com -p tcp --dport 10326
# iptables -I INPUT -d ss.zmfanqiang.com -p tcp --dport 10327
# iptables -I INPUT -d ss.zmfanqiang.com -p tcp --dport 10328
# iptables -I INPUT -d ss.zmfanqiang.com -p tcp --dport 10329
# iptables -I INPUT -d ss.zmfanqiang.com -p tcp --dport 10330
# iptables -I INPUT -d ss.zmfanqiang.com -p tcp --dport 10331
