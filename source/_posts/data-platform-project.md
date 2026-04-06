---
title: 数据平台项目
date: 2026-04-07 20:00:00
tags:
  - 技术
  - 微服务
categories:
  - 其他
description: YXD数据平台项目经验：基于DDD与Spring Cloud的企业级微服务数据平台。
---

## 项目名称

YXD数据平台

## 项目定位

基于 DDD 分层架构的企业级微服务数据平台，提供征信评分、运营商数据、黑名单查询等核心数据服务，集成 11 家三方数据供应商，统一封装 OpenAPI 接口体系。

## 技术栈

Spring Boot、Spring Cloud Gateway、MyBatis Plus、Elasticsearch、RabbitMQ、Docker

## 核心职责

1. 设计并实现征信评分、运营商数据验证、黑名单查询等核心业务模块，支撑 12 个微服务模块独立部署与扩展。
2. 集成阿里云、腾讯云、百融等 11 家供应商，建设统一 OpenAPI 接入基础设施，支持 26 个 API 端点。
3. 基于 Spring Cloud Gateway 实现 JWT 鉴权、API 订单管理、上下文传递（TransmittableThreadLocal）、RSA 响应加密。
4. 参与微服务拆分设计，制定 DDD 分层规范，完善开发文档与 Code Review 流程。
5. 通过结果复用与 RabbitMQ 异步日志处理优化吞吐，结合动态配置实现供应商热切换。
6. 编写接口、数据库与接入文档，配合 QA 联调并保持文档与代码同步更新。

## 技术亮点

- 统一三方接入架构：ExternalService-CommandHandler-Controller 三层调用模式。
- 上下文管理：基于 TransmittableThreadLocal 的跨线程池上下文传递。
- 计费与对账：API 订单全生命周期管理，支持成功/失败、计费、复用标记。
- 安全设计：JWT 鉴权、RSA 响应加密、数字签名保障数据安全。
