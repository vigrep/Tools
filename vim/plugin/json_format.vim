if !has("python")
    echomsg "json-format need python support!"
endif

function! FormatJsonAndPrint()
python << EOF
def json_line_format_print():
    line_num = vim.current.window.cursor[0]
    try:
        formatted = json.dumps(
                        json.loads(vim.current.line, object_pairs_hook=OrderedDict),
                        ensure_ascii=False, indent=4)
        print(formatted)
    except Exception as e:
        print(e)
json_line_format_print()
EOF
endfunction

function! FormatJsonAndWrite()
python << EOF
def json_line_format_write():
    line_num = vim.current.window.cursor[0]
    buff = vim.current.buffer
    try:
        formatted = json.dumps(
                        json.loads(vim.current.line, object_pairs_hook=OrderedDict),
                        ensure_ascii=False, indent=4)
        for i, line in enumerate(formatted.split('\n')):
            buff.append(line, line_num+i)
        #vim.command('normal dd')	# delete current line
    except Exception as e:
        print(e)
json_line_format_write()
EOF
endfunction

" 格式化json，也会将字段内容是json字符串的格式化（全格式化)
function! StrongFormatJsonAndWrite()
python << EOF
import vim
import json
from collections import OrderedDict

def formatJson():
    jsonData = json.loads(vim.current.line)
    getJsonDict(jsonData)
    #print(json.dumps(jsonData))
    line_num = vim.current.window.cursor[0]
    buff = vim.current.buffer
    try:
        formatted = json.dumps(jsonData,ensure_ascii=False, indent=4)
        for i, line in enumerate(formatted.split('\n')):
            buff.append(line, line_num+i)
        #vim.command('normal dd')	# delete current line
    except Exception as e:
        print(e)

def getJsonDict(jsonData):
    if type(jsonData) != dict:
        return
    for i in jsonData.keys():
        try:
            jsonData[i] = json.loads(jsonData[i])
            getJsonDict(jsonData[i])
        except TypeError:
 
            if (type(jsonData[i])) == dict:
                getJsonDict(jsonData[i])
 
            if (type(jsonData[i])) == list:
                for index in range(len(jsonData[i])):
                    try:
                        jsonData[i][index] = json.loads(jsonData[i][index])
                        getJsonDict(jsonData[i][index])
                    except TypeError:
                        if (type(jsonData[i][index])) == dict:
                            getJsonDict(jsonData[i][index])
                    #except json.decoder.JSONDecodeError: python3
                    except ValueError: # python2
                        if (type(jsonData[i][index])) == dict:
                            getJsonDict(jsonData[i][index])
 
        #except json.decoder.JSONDecodeError: python3
        except ValueError: # python2
 
            if (type(jsonData[i])) == dict:
                getJsonDict(jsonData[i])
 
            if (type(jsonData[i])) == list:
                for index in range(len(jsonData[i])):
                    try:
                        jsonData[i][index] = json.loads(jsonData[i][index])
                        getJsonDict(jsonData[i][index])
                    except TypeError:
                        if (type(jsonData[i][index])) == dict:
                            getJsonDict(jsonData[i][index])
                    #except json.decoder.JSONDecodeError: python3
                    except ValueError: # python2
                        if (type(jsonData[i][index])) == dict:
                            getJsonDict(jsonData[i][index])
formatJson()
EOF
endfunction

command FormatJsonAndWrite :call FormatJsonAndWrite()<CR>
command FormatJsonAndPrint:call FormatJsonAndPrint()<CR>
command StrongFormatJsonAndWrite :call StrongFormatJsonAndWrite()<CR>
nnoremap <leader>wj :call FormatJsonAndWrite()<CR>
nnoremap <leader>pj :call FormatJsonAndPrint()<CR>
nnoremap <leader>fj :call StrongFormatJsonAndWrite()<CR>
