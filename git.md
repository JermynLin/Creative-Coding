### git





##### repository结构

---

repository版本库

* 工作区
* stage/index(暂存区)
* HEAD(指针：指向当前分支(默认分支：master))



##### create命令

---

$ `git init` repositoryname		#创建本地版本库

$ `git clone` <url>		#克隆远程版本库



##### local changes命令

---

$ `git status`					#查看版本库状态

$ pwd							#显示当前路径

$ cd repositoryname				#切换到repositoryname目录

$ ls								#显示目录

$ ls -ah							#显示隐藏目录

$ `git add` filename.md			#添加readme.md文件到stage中

$ `git add` *.md					#添加所有md文件到stage中

$ `git add` .						#添加当前目录下的所有文件到stage中

$ `git rm` --cached filename.md	#将添加到stage中的filename.md文件撤销

$ `git commit` -m "msg of commit" 				#提交stage中所有内容

$ `git commit` -m "msg of commit" filename		#提交stage中的filename文件



##### commit histoty命令

---

$ `git log`						#查看commit日志

$ `git reflog` 					#查看指令记录



##### update命令

---

$ `git remote add` <remotename> <url>	#关联新的远程库

$ `git remote` -v							#列出当前配置的远程库

$ `git push`  <remotename> <branch>		#本地库推送到远程库

> `$git push` -u origin master				#首次推送

$ `git pull`  <remotename> <branch>		#下载远程库



##### branch命令

---

$ `git branch`					#查看分支

$ `git branch` <name>			#创建分支

$ `git checkout` <name>			#切换分支

$ `git checkout` -b <name>		#创建并切换分支

$ `git merge` <name>				#合并name分支到当前分支

$ `git branch` -d <name>			删除分支



##### undo命令

---

$ `git checkout` -- filename.md	#撤销在工作区对filename.md文件的修改

$ `git checkout` -- .				#撤销在工作区所有文件的修改

$ `git checkout` -- *.md			#撤销在工作区对所有md文件的修改

$ `git reset` HEAD filename.md	#将stage区中的filename.md文件撤销回工作区

$ `git reset` HEAD 				#将stage区中的所有文件撤销回工作区

$ `git reset` --hard HEAD^		#回退到上一个版本

$ `git reset` --hard HEAD^^		#回退到上上个版本

$ `git reset` --hard HEAD~10		#回退到之前10个版本

$ `git reset` --hard 5185793		#回退到版本号开头是5185793到版本



##### help

---

$ `git help`						#查看帮助



##### 版本号

---

长度为40的十六进制字符串



##### 创建SSH Key

---

`ssh-keygen -t rsa -C "git-username/e-mail"`

用户主目录>.ssh>id_rsa(私钥)、id_rsa.pub(公钥)

复制公钥

github.com>Account Settings>SSH Key>Add SSH Key



`ssh -T git@github.com`			#验证key

Hi xxx! You've successfully authenticated, but GitHub does not provide shell  access.