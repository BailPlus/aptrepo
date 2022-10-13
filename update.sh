#!/bin/sh
#更新仓库
dpkg-scanpackages -m . > Packages
apt-ftparchive release . > Release
mv Release.gpg Release.gpg.old
mv InRelease InRelease.old
gpg --armor --detach-sign -o Release.gpg Release
gpg --clearsign -o InRelease Release
#上传github
git add .
git commit --amend --no-edit
git push -f
##sudo apt-key add key.asc	#客户端添加信任命令
notify-send 提示 执行完毕
