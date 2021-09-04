# ubuntu下clash

**一键配置脚本：[https://github.com/dragonstrong/clash/blob/main/start.sh](https://github.com/dragonstrong/clash/blob/main/start.sh)，先解压config.rar到同一文件夹下再运行**

## 1、搭配fastlink

注册链接：[https://fastlink.ws/auth/register?code=r9NY](https://fastlink.ws/auth/register?code=r9NY)(189元/年  ，单买19元/月，100G/月，速度和稳定性都很可以)


## 2、所需文件

**特别说明：config.yaml从fastlink上下载，下载后重命名为config.yaml，另外两个文件是通用的**

![在这里插入图片描述](https://img-blog.csdnimg.cn/e13fb95b7e11475ab17e4f65b405a8a3.PNG#pic_center)

![在这里插入图片描述](https://img-blog.csdnimg.cn/0eba68be81354afcb5ef1bdccf762efb.PNG?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L2RyYWdvbnN0cm9uZw==,size_16,color_FFFFFF,t_70#pic_center)


下载链接：[https://github.com/dragonstrong/clash](https://github.com/dragonstrong/clash)

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
开启v2-ray,找到所选服务器的settings中的端口

![image](https://user-images.githubusercontent.com/32926995/132078585-06b55146-3f48-47e3-be19-9ac6491d3a5a.png)

输入以下命令：

```
set http_proxy=socks5://127.0.0.1:10808
set https_proxy=socks5://127.0.0.1:10808
```

