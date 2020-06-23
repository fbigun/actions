FROM fbigun/onedriveuploader

LABEL "version"="0.0.1"
LABEL "com.github.actions.name"="Onedrive for Uploader"
LABEL "com.github.actions.description"="upload file to onedrive"
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="red"

LABEL "repository"="https://github.com/fbigun/actions/"
LABEL "maintainer"="fbigun"

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]
