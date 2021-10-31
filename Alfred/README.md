
# Alfred

## Workflows

| Workflows                              | 描述                                                      |
|----------------------------------------|-----------------------------------------------------------|
| [IP Address](#获取IP地址)              | 获取局域网IP/网外IP                                       |
| [Create New File in Finder](#新建文件) | 在当前Finder路径下新建文件                                |
| [Fork](#Fork)                          | 用Fork打开罗列的git项目                                   |
| [Source Tree](#SourceTree)             | 用Source Tree打开罗列的git项目                            |
| [Tools](#Tools)                        | 常用工具集合：用MacVim打开选中的文件等                    |
| [Keymap](#Keymap)                      | 输入关键字触发按键组合(可配合Magnet窗口管理软件等使用)    |

### 获取IP地址

唤起`Alfred`，输入`ip`，选择要获取的IP，回车复制到系统粘贴板中

### 新建文件

在当前Finder路径下新建文件

唤起`Alfred`，输入`new 文件名`，回车

### Fork

用Fork打开罗列的git项目

唤起`Alfred`，输入`fork`，选择要用Fork打开的git选项，回车

> 可随时在 `Alfred->Workflows->Fork->List Filter中增加/移除git项目`

### SourceTree

用Source Tree打开罗列的git项目

唤起`Alfred`，输入`git`，选择要用SourceTree打开的git选项，回车

> 可随时在 `Alfred->Workflows->Source Tree->List Filter中增加/移除git项目`

### Tools

常用工具集合

#### 用MacVim打开选中的文件

1. 在`Finder`中选中文件
2. 唤起`Alfred`，输入`vim`，回车

### Keymap

输入关键字触发按键组合(可配合Magnet窗口管理软件等使用)

用一个简单易记的单词触发某个按键组合

不容易记住的快捷键，可以添加到这个Workflows

```NSAppleScript

--脚本完成组合键按下 by Ficow
tell application "System Events"
    key code 53 using {command down, option down}
end tell

-- --这个符号是注释符号,(**)这个也是注释符号，类似于C语言里面的//和/**/
-- key code 53的意思按下Esc键，53的含义见下面的列表
-- using {} 花括号部分按下的按键和前面的按键事件一起作用
-- command down, option down的含义是按下command和option
-- 所以这个脚本的作用就是启动强制退出窗口(command+option+Esc)
```

apple key code list（后面会用到这个清单！）:

| 键                  | code |
|---------------------|------|
| ANSI_0              | 29   |
| ANSI_1              | 18   |
| ANSI_2              | 19   |
| ANSI_3              | 20   |
| ANSI_4              | 21   |
| ANSI_5              | 23   |
| ANSI_6              | 22   |
| ANSI_7              | 26   |
| ANSI_8              | 28   |
| ANSI_9              | 25   |
| ANSI_A              | 0    |
| ANSI_B              | 11   |
| ANSI_C              | 8    |
| ANSI_D              | 2    |
| ANSI_E              | 14   |
| ANSI_F              | 3    |
| ANSI_G              | 5    |
| ANSI_H              | 4    |
| ANSI_I              | 34   |
| ANSI_J              | 38   |
| ANSI_K              | 40   |
| ANSI_L              | 37   |
| ANSI_M              | 46   |
| ANSI_N              | 45   |
| ANSI_O              | 31   |
| ANSI_P              | 35   |
| ANSI_Q              | 12   |
| ANSI_R              | 15   |
| ANSI_S              | 1    |
| ANSI_T              | 17   |
| ANSI_U              | 32   |
| ANSI_V              | 9    |
| ANSI_W              | 13   |
| ANSI_X              | 7    |
| ANSI_Y              | 16   |
| ANSI_Z              | 6    |
| F1                  | 122  |
| F2                  | 120  |
| F3                  | 99   |
| F4                  | 118  |
| F5                  | 96   |
| F6                  | 97   |
| F7                  | 98   |
| F8                  | 100  |
| F9                  | 101  |
| F10                 | 109  |
| F11                 | 103  |
| F12                 | 111  |
| F13                 | 105  |
| F14                 | 107  |
| F15                 | 113  |
| F16                 | 106  |
| F17                 | 64   |
| F18                 | 79   |
| F19                 | 80   |
| F20                 | 90   |
| Return              | 36   |
| Tab                 | 48   |
| Space               | 49   |
| Delete              | 51   |
| Escape              | 53   |
| Command             | 55   |
| Shift               | 56   |
| CapsLock            | 57   |
| Option              | 58   |
| Control             | 59   |
| RightShift          | 60   |
| RightOption         | 61   |
| RightControl        | 62   |
| Function            | 63   |
| VolumeUp            | 72   |
| VolumeDown          | 73   |
| Mute                | 74   |
| ISO_Section         | 10   |
| ANSI_Equal          | 24   |
| ANSI_Minus          | 27   |
| ANSI_RightBracket   | 30   |
| ANSI_LeftBracket    | 33   |
| ANSI_Quote          | 39   |
| ANSI_Semicolon      | 41   |
| ANSI_Backslash      | 42   |
| ANSI_Comma          | 43   |
| ANSI_Slash          | 44   |
| ANSI_Period         | 47   |
| ANSI_Grave          | 50   |
| ANSI_KeypadDecimal  | 65   |
| ANSI_KeypadMultiply | 67   |
| ANSI_KeypadPlus     | 69   |
| ANSI_KeypadClear    | 71   |
| ANSI_KeypadDivide   | 75   |
| ANSI_KeypadEnter    | 76   |
| ANSI_KeypadMinus    | 78   |
| ANSI_KeypadEquals   | 81   |
| ANSI_Keypad0        | 82   |
| ANSI_Keypad1        | 83   |
| ANSI_Keypad2        | 84   |
| ANSI_Keypad3        | 85   |
| ANSI_Keypad4        | 86   |
| ANSI_Keypad5        | 87   |
| ANSI_Keypad6        | 88   |
| ANSI_Keypad7        | 89   |
| ANSI_Keypad8        | 91   |
| ANSI_Keypad9        | 92   |
| JIS_Yen             | 93   |
| JIS_Underscore      | 94   |
| JIS_KeypadComma     | 95   |
| JIS_Eisu            | 102  |
| JIS_Kana            | 104  |
| Help                | 114  |
| Home                | 115  |
| PageUp              | 116  |
| ForwardDelete       | 117  |
| End                 | 119  |
| PageDown            | 121  |
| LeftArrow           | 123  |
| RightArrow          | 124  |
| DownArrow           | 125  |
| UpArrow             | 126  |
