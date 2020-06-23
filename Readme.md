# 个人使用的 GitHub actions

## hello-world-docker-action

示例项目
在 hello-world-docker-action 目录中，创建指定以下信息的 README.md 文件:

* 操作的详细描述。
* 必要的输入和输出变量。
* 可选的输入和输出变量。
* 操作使用的密码。
* 操作使用的环境变量。
* 如何在工作流程中使用操作的示例。


## uploader-onedrive

此操作将文件上传到 OneDrive 云上保存。

###  Example usage

```
uses: fbigun/actions/uploader-onedrive@master
with:
- auth: ${{ secrets.ONEDRIVE_TOKEN }}
- localpath: Readme.md
- remotepath: "/test"
```

refer:: [uploader-onedrive 文档](uploader-onedrive/Readme.md)
