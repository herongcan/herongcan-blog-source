---
title: WinSCP_work
date: 2019-03-01 16:58:07
updated: 2019-03-01 16:58:07
tags:
  - 瞎折腾
  - 随笔
  - 文化
categories:
  - 其他
description: 使用WinSCP+OpenSSH+批处理文件+任务调度计划程序完成数据库备份及传输。
---

使用 WinSCP + OpenSSH + 批处理文件 + Windows 任务计划，实现数据库备份、传输与清理的自动化流程（Windows -> Windows）。

## 场景

1. 正式端导出数据库备份到本地目录。  
2. 调用 WinSCP 脚本把备份同步到测试端。  
3. 清理一个月前备份文件与历史日志。  
4. 使用任务计划按固定时间自动执行。

## WinSCP 要点

- 支持 SFTP/SCP，适合批处理脚本化。  
- 常用命令：`open`、`synchronize remote`、`option synchdelete on`。  
- 建议在正式端执行同步脚本，减少链路复杂度。

示例思路：

```text
option batch continue
option confirm off
option synchdelete on
open sftp://<user>:<password>@<host>:22
synchronize remote <local-path> <remote-path>
close
exit
```

## OpenSSH 要点

- 在接收端安装并启用 OpenSSH 服务。  
- 配置防火墙放行 `22` 端口。  
- 服务设置为自动启动，确保定时任务稳定可用。

## 批处理脚本要点

- 导出数据库（如 `exp` 命令）。  
- 调用 WinSCP 执行同步并输出日志。  
- 用 `forfiles` 清理过期 `dmp/txt` 文件。

## 任务计划程序

1. 创建任务并填写描述。  
2. 设置触发器（如每天凌晨执行）。  
3. 操作中指定批处理脚本路径。
