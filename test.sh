#!/bin/bash

# FnOS Skill 测试脚本
# 用于验证skill是否正确安装和配置

echo "=== FnOS Skill 测试 ==="
echo ""

# 检查skill文件是否存在
echo "1. 检查skill文件..."
if [ -f ~/.config/opencode/skills/fnos/SKILL.md ]; then
    echo "   ✓ SKILL.md 文件存在"
else
    echo "   ✗ SKILL.md 文件不存在"
    exit 1
fi

# 检查README文件
echo "2. 检查README文件..."
if [ -f ~/.config/opencode/skills/fnos/README.md ]; then
    echo "   ✓ README.md 文件存在"
else
    echo "   ✗ README.md 文件不存在"
fi

# 检查INSTALL文件
echo "3. 检查INSTALL文件..."
if [ -f ~/.config/opencode/skills/fnos/INSTALL.md ]; then
    echo "   ✓ INSTALL.md 文件存在"
else
    echo "   ✗ INSTALL.md 文件不存在"
fi

# 检查skill文件格式
echo "4. 检查skill文件格式..."
if head -n 5 ~/.config/opencode/skills/fnos/SKILL.md | grep -q "^---"; then
    echo "   ✓ SKILL.md 格式正确"
else
    echo "   ✗ SKILL.md 格式错误"
fi

# 检查name字段
echo "5. 检查name字段..."
if head -n 10 ~/.config/opencode/skills/fnos/SKILL.md | grep -q "^name: fnos"; then
    echo "   ✓ name字段正确"
else
    echo "   ✗ name字段错误"
fi

# 检查description字段
echo "6. 检查description字段..."
if head -n 10 ~/.config/opencode/skills/fnos/SKILL.md | grep -q "^description:"; then
    echo "   ✓ description字段存在"
else
    echo "   ✗ description字段不存在"
fi

echo ""
echo "=== 测试完成 ==="
echo ""
echo "下一步："
echo "1. 重启opencode使skill生效"
echo "2. 在opencode中测试skill加载"
echo "3. 执行飞牛相关操作验证skill功能"