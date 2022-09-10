该系统使用的环境：idea、jdk1.8、tomcat8.5、maven3.8.2、mysql8.0

该环境的配置教程：都总结在csdn里

1.jdk配置安装教程：http://t.csdn.cn/QsV0M

2.maven配置：http://t.csdn.cn/K3fQv

3.MySQL安装教程：http://t.csdn.cn/ngMD7

4.Tomcat环境配置：http://t.csdn.cn/dD7zg

项目导入idea：open项目文件目录---配置本地maven仓库---修改数据库账号密码---添加配置Tomcat

注意事项：MySQL8.0驱动：com.mysql.cj.jdbc.Driver

	需要加上对应时区：&serverTimezone=UTC
	MySQL5.0驱动：com.mysql.jdbc.Driver
	
中文乱码：把idea工作空间编码格式都改为utf-8或者GBK