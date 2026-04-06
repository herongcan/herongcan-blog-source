# Hexo Source Repository (Migrated)

该目录是 `herongcan.github.io` 的 Hexo 源码工作区，用于替代直接手改静态 HTML。

## 环境要求

- Node.js 16.x（当前已验证可用）
- npm 8+

> 已锁定 Hexo 6 以兼容当前本机 Node 16。

## 常用命令

```bash
npm install
npm run clean
npm run server
npm run build
npm run deploy
```

## 发布流程

1. 在 `source/_posts` 或 `source/<page>/index.md` 修改内容
2. `npm run server` 本地预览
3. `npm run deploy` 发布到 `herongcan/herongcan.github.io` 的 `master`

## 迁移进度

- 已迁移：
  - `Welcome-to-my-blog`（Markdown）
  - `data-platform-project`（独立页面）
- 待迁移：
  - 其余历史 HTML 页面（`WinSCP-work`、`开发草稿`、`别友人` 等）
  - 主题从默认 `landscape` 切换到 `NexT`（如需保持原站视觉）
