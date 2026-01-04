# dotfiles

集中管理日常使用的配置文件，并通过软链接保持系统与仓库一致。

## 已管理的软件

| 软件 | 配置路径/文件 | 说明 |
| --- | --- | --- |
| tmux | `~/.tmux.conf`，`~/.config/tmux/` | 主配置与脚本、状态栏、局部覆盖 `tmux.conf.local` |
| Zsh (zimfw) | `~/.zshrc`，`~/.config/zsh/zimrc` | 交互配置与插件列表 |
| Git | `~/.gitconfig`，`~/.config/git/` | 全局设置、别名、模板、ignore |
| clang-format | `~/.clang-format` | C/C++ 格式化规则 |
| Neovim | `~/.config/nvim/` | 插件锁、样式、初始化配置 |
| Kitty | `~/.config/kitty/` | 终端主题与主配置 |
| Yazi | `~/.config/yazi/` | 终端文件管理器配置与插件 |
| IdeaVim | `~/.config/ideavim/.ideavimrc` | JetBrains Vim 配置（含备份） |
| Aerospace | `~/.config/aerospace/` | 平铺窗口管理器配置（含 i3 兼容版） |
| btop | `~/.config/btop/btop.conf` | 资源监控工具 |
| neofetch | `~/.config/neofetch/config.conf` | 系统信息展示 |
| npm | `~/.npmrc` | npm 全局配置 |

## 快捷键

### tmux
| 快捷键 | 功能 | 备注 |
| --- | --- | --- |
| `C-s` | 前缀键 | 所有绑定以此为前缀（除全局 Alt 绑定外） |
| `prefix + r` | 重新加载配置 | 显示提示确认加载 |
| `prefix + C-c` | 新建会话 | |
| `Alt+S` | 新建会话（脚本） | 无需前缀，使用当前工作目录 |
| `Alt+o` | 新建窗口 | 在当前 pane 目录 |
| `Alt+O` | 拆分 pane 为新窗口 | break-pane |
| `Alt+s` | 切换 scratchpad | `toggle_scratchpad.sh` |
| `Alt+Q` | 关闭当前 pane | kill-pane |
| `prefix + k/j/h/l` | 垂直/水平分屏 | k=上、j=下、h=左、l=右 |
| `Alt+h/j/k/l` | Pane 之间移动 | 无需前缀 |
| `Alt+H/J/K/L` | 调整 pane 大小 | 步长 3 |
| `Alt+1..9` | 跳转到窗口 1..9 | 无需前缀 |
| `Alt+f` | 切换 pane 全屏 | resize-pane -Z |
| `prefix + Space` | 切换分屏方向 | `toggle_orientation.sh` |
| `Alt+v` | 进入复制模式 | 使用 vi 键位 |

### Zsh
| 快捷键/命令 | 功能 | 备注 |
| --- | --- | --- |
| `y` | 打开 yazi 并返回选中目录 | 自动切换到 yazi 退出时的目录 |
| `ll` | `ls -lah --color=auto` | 便捷列目录 |
| `vi` | `vim` | 快速调用 Vim |
| `proxy` | 设置 `ALL_PROXY` | 指向 `socks5://localhost:20170` |
| `EDITOR` | 默认编辑器 | 设为 `nvim` |

> 需要删除不再使用的软件时，可直接编辑本 README 的“已管理的软件”部分。
