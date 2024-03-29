Table of Contents
=================

* [ubuntu下clash](#ubuntu下clash)
  * [1、搭配fastlink](#1搭配fastlink)
  * [2、所需文件](#2所需文件)
  * [3、执行命令](#3执行命令)
  * [4、配置proxy](#4配置proxy)
  * [5、浏览器proxy设置使用系统代理](#5浏览器proxy设置使用系统代理)
  * [6、终端测试](#6终端测试)
* [windows cmd下代理](#windows-cmd下代理)
* [clash开热点给其他设备科学上网](#clash开热点给其他设备科学上网)
* [oculus quest2 头显科学上网](#oculus-quest2-头显科学上网)


# ubuntu下clash

**一键配置脚本：[start.sh](https://github.com/dragonstrong/clash/blob/main/start.sh)，先解压config.rar到同一文件夹下再运行**

## 1、搭配fastlink

注册链接：[fastlink](https://fastlink.ws/auth/register?code=r9NY)(189元/年  ，单买19元/月，100G/月，速度和稳定性都很可以)


## 2、所需文件

**特别说明：config.yaml从fastlink上下载，下载后重命名为config.yaml，另外两个文件是通用的**

![在这里插入图片描述](https://img-blog.csdnimg.cn/e13fb95b7e11475ab17e4f65b405a8a3.PNG#pic_center)

![在这里插入图片描述](https://img-blog.csdnimg.cn/0eba68be81354afcb5ef1bdccf762efb.PNG?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L2RyYWdvbnN0cm9uZw==,size_16,color_FFFFFF,t_70#pic_center)


下载链接：[clash](https://github.com/dragonstrong/clash)

下载后进入clash文件夹下打开终端

## 3、执行命令

```
sudo chmod a+x clash 
sudo ./clash -d .
```
成功运行如下所示
![在这里插入图片描述](https://img-blog.csdnimg.cn/2c7dd821c5bd4d92bfbaac4c2bc81f04.PNG?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L2RyYWdvbnN0cm9uZw==,size_16,color_FFFFFF,t_70#pic_center)

## 4、配置proxy

```
export http_proxy=http://127.0.0.1:7890
export https_proxy=https://127.0.0.1:7890
export socks_proxy=socks://127.0.0.1:7891
```

也可图形界面：

![在这里插入图片描述](https://img-blog.csdnimg.cn/6c4dba4fbf824b0bab17ef2187de0c5d.PNG?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L2RyYWdvbnN0cm9uZw==,size_16,color_FFFFFF,t_70#pic_center)

## 5、浏览器proxy设置使用系统代理

![在这里插入图片描述](https://img-blog.csdnimg.cn/b4c76bc2e0fb44f49074e750c2548ad6.PNG?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L2RyYWdvbnN0cm9uZw==,size_16,color_FFFFFF,t_70#pic_center)

## 6、终端测试

```
wget google.com
```
有返回保存index.html则成功

# windows cmd下代理
法1、直接从clash控制台打开

![image](https://user-images.githubusercontent.com/32926995/142195924-97ce39d5-60d3-44dc-9b61-cd38ab6a90ae.png)

或者输入命令（仅当前终端有效，退出或新开终端配置失效，相当于再起一个进程，一个terminal对应一个进程号）
```
set http_proxy=http://127.0.0.1:7890 & set https_proxy=http://127.0.0.1:7890
```
测试访问google

```
curl www.google.com
```

法2、开启v2-ray,找到所选服务器的settings中的端口

![image](https://user-images.githubusercontent.com/32926995/132078585-06b55146-3f48-47e3-be19-9ac6491d3a5a.png)

输入以下命令cmd即可走代理：

```
set http_proxy=socks5://127.0.0.1:10808
set https_proxy=socks5://127.0.0.1:10808
```

取消代理

```
set http_proxy=
set https_proxy=
```

#  clash开热点给其他设备科学上网
1、首先确保电脑端的clash开了system proxy和Allow LAN, proxies 选择global，再确认一下电脑端能否访问外网

![image](https://user-images.githubusercontent.com/32926995/132190932-75612b45-f354-4053-85fc-797baff58588.png)
![image](https://user-images.githubusercontent.com/32926995/132191240-975b2d57-17da-42d5-8720-ece7dccd2539.png)


2、手机端连wifi时选择add network,手动添加配置proxy

advaced options里proxy选择手动(manual),hostname填开热点那台点脑的ip，port填7890(即电脑端clash里general显示的port，见上上图)

#  oculus quest2 头显科学上网

1、法一：头显装clash 安卓版，记得setting->override->mode->golbal ，这种方法较稳定。

2、法二：头显连接配置了科学上网的热点，但一加载应用商店就断网，也是服了这个系统

链接：[https://zhuanlan.zhihu.com/p/337430556](https://zhuanlan.zhihu.com/p/337430556)
