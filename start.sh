#自动配置脚本，先git clash文件夹,然后运行start.sh脚本
sudo chmod a+x clash
sudo ./clash -d .
gnome-terminal -x bash -c "export http_proxy=http://127.0.0.1:7890;export https_proxy=https://127.0.0.1:7890;export socks_proxy=socks://127.0.0.1:7891" #打开新终端配置系统代理

