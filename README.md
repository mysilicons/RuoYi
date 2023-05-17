# 家政服务平台RuoYi管理后台

## 项目介绍

毕业设计家政服务平台

管理员端基于[RuoYi](https://ruoyi.vip/)框架

* [用户端](https://github.com/mysilicons/HouseKeepDemo)
* [商家端](https://github.com/mysilicons/Merchant)
* [管理员端](https://github.com/mysilicons/RuoYi)
* [后台SpringBoot](https://github.com/mysilicons/LoginServer)

## 本项目环境

* JDK17
* Maven3.8.1
* MySQL8.0.25
* IDEA2023.1.1
* 其余环境见[RuoYi](https://ruoyi.vip/)

## 管理员端运行方法

1. 安装JDK17
2. 安装Maven3.8.1
3. 克隆项目到本地 ``` https://github.com/mysilicons/RuoYi.git ```
4. 在数据库中创建ry数据库，并导入所有数据脚本，``` .sql文件 ```
5. 修改数据库连接，编辑```resources```目录下的```application-druid.yml```文件

```yaml
# 数据源配置
spring:
  datasource:
    type: com.alibaba.druid.pool.DruidDataSource
    driverClassName: com.mysql.cj.jdbc.Driver
    druid:
      # 主库数据源
      master:
        url: 你的数据库地址
        username: 你的数据库账号
        password: 你的数据库密码
```

6. 修改服务器配置，编辑```resources```目录下的```application.yml```

```yaml
# 开发环境配置
server:
  # 服务器的HTTP端口，默认为80
  port: 运行端口
  servlet:
    # 应用的访问路径
    context-path: /应用路径
```

7. 打开项目运行```com.ruoyi.RuoYiApplication.java```，出现如下图表示启动成功。

```text
(♥◠‿◠)ﾉﾞ  若依启动成功   ლ(´ڡ`ლ)ﾞ  
 .-------.       ____     __        
 |  _ _   \      \   \   /  /    
 | ( ' )  |       \  _. /  '       
 |(_ o _) /        _( )_ .'         
 | (_,_).' __  ___(_ o _)'          
 |  |\ \  |  ||   |(_,_)'         
 |  | \ `'   /|   `-'  /           
 |  |  \    /  \      /           
 ''-'   `'-'    `-..-'    
```

8. 访问后台地址 ``` http://localhost:端口 ```，默认账号 ``` admin ```，密码 ``` admin123 ```，即可进入后台管理系统。

## 感谢RuoYi

### [RuoYi官网](https://ruoyi.vip/)