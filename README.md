## ubuntu下clash
1、搭配fatlink
[https://fastlink.ws/user/tutorial?os=linux&client=clash##](https://fastlink.ws/user/tutorial?os=linux&client=clash##)

2、所需文件

**特别说明：config.yaml从fastlink上购买下载，下载下来重命名config.yaml，每个人的配置文件不一样**

![在这里插入图片描述](https://img-blog.csdnimg.cn/e13fb95b7e11475ab17e4f65b405a8a3.PNG#pic_center)

下载链接：[https://github.com/dragonstrong/clash](https://github.com/dragonstrong/clash)

下载后进入clash文件夹下打开终端

3、执行命令

```
sudo chmod a+x clash 
sudo ./clash -d .
```
成功运行如下所示
![在这里插入图片描述](https://img-blog.csdnimg.cn/2c7dd821c5bd4d92bfbaac4c2bc81f04.PNG?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L2RyYWdvbnN0cm9uZw==,size_16,color_FFFFFF,t_70#pic_center)

4、配置proxy

![在这里插入图片描述](https://img-blog.csdnimg.cn/6c4dba4fbf824b0bab17ef2187de0c5d.PNG?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L2RyYWdvbnN0cm9uZw==,size_16,color_FFFFFF,t_70#pic_center)

5、浏览器proxy设置使用系统代理
![在这里插入图片描述](https://img-blog.csdnimg.cn/b4c76bc2e0fb44f49074e750c2548ad6.PNG?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L2RyYWdvbnN0cm9uZw==,size_16,color_FFFFFF,t_70#pic_center)

6、终端测试

```
wget google.com
```
有返回保存index.html则成功
