# 安装说明

## 安装

```bash
git clone https://github.com/EuphonXD/fnos-opencode-skill.git
mkdir -p ~/.config/opencode/skills/fnos
cp -r fnos-opencode-skill/* ~/.config/opencode/skills/fnos/
```

## 验证

```bash
# 检查文件是否存在
ls ~/.config/opencode/skills/fnos/SKILL.md

# Linux/macOS
bash ~/.config/opencode/skills/fnos/test.sh

# Windows
powershell -ExecutionPolicy Bypass -File ~/.config/opencode/skills/fnos/test.ps1
```

## 生效

重启 opencode 或在 opencode 中输入：`使用 fnos skill`

## 更新

```bash
cd ~/.config/opencode/skills/fnos
git pull origin main
```

## 卸载

```bash
rm -rf ~/.config/opencode/skills/fnos
```