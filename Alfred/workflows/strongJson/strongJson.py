import json
import pyperclip
 
def getJsonDict(jsonData: dict):
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
                    except json.decoder.JSONDecodeError:
                        if (type(jsonData[i][index])) == dict:
                            getJsonDict(jsonData[i][index])
 
        except json.decoder.JSONDecodeError:
 
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
                    except json.decoder.JSONDecodeError:
                        if (type(jsonData[i][index])) == dict:
                            getJsonDict(jsonData[i][index])
 
if __name__ == '__main__':
    jsonData = json.loads(pyperclip.paste())
    getJsonDict(jsonData)
    pyperclip.copy(json.dumps(jsonData))
    items = {"items": []}
    template = {
        "title": "",
        "subtitle": "",
        "arg": ""
    }
    template["title"] = "success"
    template["subtitle"] = "success"
    template["arg"] = "success"
    items["items"].append(template);
    print(json.dumps(items))
