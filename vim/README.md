
# Vim

## 插件

| 插件                           | 描述       |
|--------------------------------|------------|
| [json_format.vim](#格式化json) | 格式化json |

### 格式化json

安装插件：`json_format.vim`

默认按键映射:
- `<leader>wj` 格式化当前光标所在行的json字符串，并将格式化结果输出到当前行的下一行
- `<leader>fj` 加强版格式化当前光标所在行的json字符串，并将格式化结果输出到当前行的下一行
- `<leader>pj` 格式化当前光标所在行的json字符串，并将格式化结果临时显示出来，不输出到当前文件中

> 注: 
> 加强版格式化json: 会额外将字段内容是json格式的字符串格式化
