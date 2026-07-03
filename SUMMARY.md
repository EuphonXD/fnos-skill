# FnOS Skill 总结

## 已完成的工作

我已经成功为飞牛NAS创建了一个opencode skill，包含以下文件：

### 1. 主要skill文件
- **SKILL.md** (13.6KB) - 主要的skill文件，包含完整的飞牛NAS操作指南

### 2. 文档文件
- **README.md** (2.9KB) - 使用说明和功能概述
- **INSTALL.md** (2.8KB) - 详细的安装和配置说明

### 3. 测试脚本
- **test.sh** (1.6KB) - Linux/macOS测试脚本
- **test.ps1** (2.5KB) - Windows PowerShell测试脚本

## Skill功能

### 主要特性
1. **系统管理** - 飞牛NAS系统信息查询和配置
2. **Docker管理** - 容器、镜像、网络管理
3. **存储管理** - 卷、磁盘、文件系统操作
4. **网络配置** - 网络接口、防火墙、DNS配置
5. **故障排除** - 常见问题诊断和解决方案

### 可信来源集成
1. **飞牛开发者开放平台 (FNOSP)** - https://github.com/FNOSP
2. **飞牛帮助中心** - https://help.fnnas.com/
3. **飞牛社区论坛** - https://club.fnnas.com/

### 开发工作流
1. **应用开发工作流** - 从开发到部署的完整流程
2. **Docker部署工作流** - 容器化应用部署
3. **存储管理工作流** - 存储卷配置和管理
4. **备份恢复工作流** - 系统备份和灾难恢复
5. **监控故障排除工作流** - 系统监控和问题诊断

## 安装位置

```
~/.config/opencode/skills/fnos/
├── SKILL.md      # 主要skill文件
├── README.md     # 使用说明
├── INSTALL.md    # 安装说明
├── test.sh       # Linux测试脚本
└── test.ps1      # Windows测试脚本
```

## 使用方法

### 1. 自动加载
skill会在以下情况自动加载：
- 执行飞牛NAS相关操作时
- 管理Docker容器时
- 操作存储卷时
- 配置网络时
- 排查系统问题时

### 2. 手动加载
在opencode中，可以使用以下命令手动加载skill：
```
使用 fnos skill
```

### 3. 测试skill
```bash
# Linux/macOS
bash ~/.config/opencode/skills/fnos/test.sh

# Windows PowerShell
powershell -ExecutionPolicy Bypass -File ~/.config/opencode/skills/fnos/test.ps1
```

## 主要命令

### 系统信息
```bash
cat /etc/fnos-version    # 飞牛版本
df -h                    # 磁盘空间
free -h                  # 内存使用
```

### Docker管理
```bash
docker ps                # 列出容器
docker logs <container>  # 查看日志
docker exec -it <container> /bin/bash  # 进入容器
```

### 存储管理
```bash
ls -la /vol1/            # 查看主存储
du -sh /vol*/*           # 检查使用量
mount | grep /vol*       # 查看挂载
```

### 网络配置
```bash
ip addr show             # 网络接口
netstat -tuln            # 开放端口
iptables -L              # 防火墙规则
```

## 最佳实践

### 安全性
1. 定期更新系统和Docker镜像
2. 使用强密码和密钥认证
3. 配置防火墙规则
4. 启用数据加密

### 性能优化
1. 设置容器资源限制
2. 使用SSD存储
3. 监控系统资源
4. 优化网络配置

### 开发流程
1. 在开发环境测试
2. 使用版本控制
3. 编写测试用例
4. 文档化配置

## 故障排除

### 常见问题
1. **容器无法启动** - 检查日志和卷挂载
2. **存储权限问题** - 检查用户/组映射
3. **网络连接问题** - 检查网络配置和端口映射

### 获取帮助
1. 搜索官方文档：https://help.fnnas.com/?search=关键词
2. 查阅社区论坛：https://club.fnnas.com/
3. 检查FNOSP GitHub：https://github.com/FNOSP

## 更新和维护

### 更新skill
编辑以下文件：
```
~/.config/opencode/skills/fnos/SKILL.md
```

更新后需要重启opencode使更改生效。

### 卸载skill
删除以下目录：
```bash
rm -rf ~/.config/opencode/skills/fnos
```

## 配置

### 自定义skill路径
如果需要将skill放在其他位置，可以在 opencode.json 中配置：
```json
{
  "skills": {
    "paths": ["~/.config/opencode/skills"]
  }
}
```

### 禁用skill
如果需要禁用此skill，可以重命名或删除：
```
~/.config/opencode/skills/fnos/SKILL.md
```

## 贡献

要改进此skill：
1. 参考官方文档验证信息
2. 在安全环境中测试命令
3. 文档化飞牛特定考虑
4. 包含故障排除提示

## 下一步

1. **重启opencode** - 使skill生效
2. **测试skill** - 验证功能正常
3. **使用skill** - 执行飞牛NAS操作
4. **反馈改进** - 根据使用体验优化skill

## 相关资源

- **Superpowers框架**: https://github.com/obra/superpowers
- **飞牛开发者平台**: https://github.com/FNOSP
- **飞牛文档**: https://help.fnnas.com/
- **飞牛社区**: https://club.fnnas.com/

---

**注意**: 此skill专为飞牛NAS系统设计，在其他系统上可能无法正常工作。