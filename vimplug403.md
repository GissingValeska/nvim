# vimplug403跳转问题
## 问题

报错：curl: (7) Failed to connect to raw.githubusercontent.com port 443: 拒绝连接；
## 解决方法
打开 https://www.ipaddress.com/ 输入访问不了的域名
拿到对应的ip地址
在/etc/hosts 文件下添加ip 域名 

185.199.108.133 raw.githubusercontent.com	
185.199.109.133 raw.githubusercontent.com
185.199.110.133 raw.githubusercontent.com
185.199.111.133 raw.githubusercontent.com
2606:50c0:8000::154 raw.githubusercontent.com
2606:50c0:8001::154 raw.githubusercontent.com
2606:50c0:8002::154 raw.githubusercontent.com
2606:50c0:8003::154 raw.githubusercontent.com
