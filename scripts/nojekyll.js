/**
 * GitHub Pages 默认会跑 Jekyll，会吞掉名为 tags / categories 等目录的静态输出。
 * 生成空 .nojekyll 以跳过 Jekyll，保证 Hexo 的 tags、categories 等目录能正常访问。
 */
const fs = require('fs');
const path = require('path');

hexo.on('generateAfter', () => {
  fs.mkdirSync(hexo.public_dir, { recursive: true });
  fs.writeFileSync(path.join(hexo.public_dir, '.nojekyll'), '');
});
