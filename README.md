
# AgriProdInfo 农产品资讯管理系统

![系统模块总览](农产品资讯管理系统.png)

## 配置数据库

# 登入本地数据库

    mysql -u root -p
    
## 创建用户并且授权

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
 
 ## 切换数据库并导入数据库脚本
 
 使用数据库
 
    use argi_info;
    
 然后运行`demo.sql`
 
 
