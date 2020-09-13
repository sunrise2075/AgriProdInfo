
# AgriProdInfo 农产品资讯管理系统

![系统模块总览](农产品资讯管理系统.png)

## 系统环境准备

## 软件安装

[JDK1.8下载](https://www.oracle.com/cn/java/technologies/javase/javase-jdk8-downloads.html)

[JDK安装指引](https://blog.csdn.net/weixin_42109012/article/details/94388518)

[Apache Maven安装配置](https://blog.csdn.net/shixianyiyu5277/article/details/80397832)

[IntelliJ IDEA](https://blog.csdn.net/weixin_44323869/article/details/90546148)

## 配置数据库

### 登入本地数据库

    mysql -u root -p
    
### 创建用户并且授权

创建应用程序数据库

    DROP DATABASE `argi_info`;
    
    CREATE DATABASE  `argi_info` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
    
    CREATE USER 'argiroot'@'localhost' IDENTIFIED BY  '123456';
    
    GRANT ALL PRIVILEGES ON  `argi_info` . * TO  'argiroot'@'localhost';
    
    flush privileges;
    
 注意，以上配置默认数据库和应用程序包部署在同一台主机上，所以主机名是`localhost`
 
 此外，应用程序访问数据库的用户名是`argi_root`,密码是`123456`
 
 实际部署的时候可以改动密码，只需要应用程序的数据库连接配置的地方作相应改动
 
 ![应用程序数据库配置连接](./WechatIMG325.png)
 
 ### 切换数据库并导入数据库脚本
    
 运行`demo.sql`
 
 ## 导入项目
 
 [导入项目](https://www.cnblogs.com/dpl9963/p/10075456.html)
 
 注意，上面的链接文章总包含了如何在`IEAD`中配置`Maven`的具体步骤，如果代码无法编译构建，请注意配置好自己电脑上`Maven`安装包和和`Maven仓库`的文件路径
 
 
