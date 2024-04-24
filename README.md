# Server(包含数据库)  
需要组件  

redis
mysql
elasticsearch

编写雪花databaseId与workId生产规则
同一台机器，使用相同的databaseId,由redis缓存
同一服务端口，用同一workId,由redis缓存
- 应用层
  - apiend 对应to C web接口
  - backend 对应管理端接口
  - payment 对应三方支付结果回调
  - platend 对应三方游戏回调
  - netty  长链接消息
  - xxl-job-executors 调度执行器
- 模块层
  - dao层 mapper与db实体
  - service 业务逻辑
  - tools db-> mapper生成
  - util 工具类
  - doc 版本变更sql脚本记录
  - plat 三方游戏对接模型抽象
  - pay三方支付对接模型抽象
- 中间件
  - reids
  - es 存储coinLog（帐变）,注单信息
  - mysql 基础业务数据

  # Server(包含数据库)  
需要组件  

redis
mysql
elasticsearch

编写雪花databaseId与workId生产规则
同一台机器，使用相同的databaseId,由redis缓存
同一服务端口，用同一workId,由redis缓存
- 应用层
  - apiend 对应to C web接口
  - backend 对应管理端接口
  - payment 对应三方支付结果回调
  - platend 对应三方游戏回调
  - netty  长链接消息
  - xxl-job-executors 调度执行器
- 模块层
  - dao层 mapper与db实体
  - service 业务逻辑
  - tools db-> mapper生成
  - util 工具类
  - doc 版本变更sql脚本记录
  - plat 三方游戏对接模型抽象
  - pay三方支付对接模型抽象
- 中间件
  - reids
  - es 存储coinLog（帐变）,注单信息
  - mysql 基础业务数据
  - rabbitmq

  # ZI Java Server (包含数据库)
## 本仓库用于区隔线上版本，便于Java后端改动重构

> filbet-zi-dev 服务及组件架构图
> https://www.figma.com/file/rLWTO9A0yMorNeXX23C3QZ/Untitled?type=whiteboard&node-id=0-1&t=9iIGIinKlPdnwxXB-0

## 需要组件
- Redis
- Aurora
- Elasticsearch
- ShardingSphere
- CloudCanal
- Apollo
- EKS

