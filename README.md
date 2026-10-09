# C Project

## 构建

```bash
make          # 编译
make run      # 编译并运行
make clean    # 清理
```

在 VS Code 中：
- `Ctrl+Shift+B` 编译当前文件
- `F5` 调试
- `Ctrl+F5` 一键运行 (Code Runner)

## 目录结构

```
├── src/          # 源代码
├── include/      # 头文件
├── build/        # 编译产物（已 gitignore）
├── .vscode/      # VS Code 配置
├── Makefile      # 构建脚本
└── README.md
```

## 环境

- 编译器: GCC 14.2.0 (MinGW-w64)
- 标准: C17
