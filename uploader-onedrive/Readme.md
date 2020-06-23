# uploader-onedrive

此操作将文件上传到 OneDrive 云上保存。

## Inputs

### `auth`

**必填参数** 命令 OneDriveUploader 认证后的 `RefreshToken` 值

> `OneDriveUploader -a 'url'` 运行成功后 `auth.json` 文件中的 `RefreshToken`
> 建议将该值保存至 GitHub 控制台的 `secrets` 中。

### `localpath`

**必填参数** 需要上传的文件或文件夹路径

### `remotepath`

**参数** OneDrive 云上的路径。默认在根目录上。


## Example usage

```
uses: fbigun/actions/uploader-onedrive@master
with:
- auth: ${{ secrets.ONEDRIVE_TOKEN }}
- localpath: Readme.md
- remotepath: "/test"
```
