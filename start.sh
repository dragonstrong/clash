#自动配置脚本，先git clash文件夹,然后运行start.sh脚本
sudo chmod a+x clash
sudo chmod a+x proxy.sh   
gnome-terminal -x bash -c "bash proxy.sh;exec bash;" #打开新终端配置系统代理，好像无效，那就手动输入吧
sudo ./clash -d .


