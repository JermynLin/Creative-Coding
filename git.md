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

$ cd repositoryname				#切换到版本库到工作目录

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

$ `git remote add` <shortname> <url>	#关联新的远程库

$ `git push` origin master					#本地库推送到远程库

> `$git push` -u origin master				#首次推送



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



##### 版本号

---

长度为40的十六进制字符串



##### fatel:Could not read from remote repository

---

`cd ~/.ssh ls`

`ls`				#检测ssh key

id_rsa	id_rsa.pub	known_hosts		#☑️



解决：

`ssh-keygen -t rsa -C "name"`		#name➡️git用户名

`ssh -v git@github.com`

最后两句会出现：

No more authentication methods to try.  

Permission denied (publickey).

`ssh-agent -s`

SSH_AUTH_SOCK=/tmp/ssh-GTpABX1a05qH/agent.404; export SSH_AUTH_SOCK;  

SSH_AGENT_PID=13144; export SSH_AGENT_PID;  

`ssh-add ~/.ssh/id_rsa`

Identity added: ...

>如果出现错误提示：
>
>Could not open a connection to your authentication agent.
>
>请执行命令：`eval ssh-agent -s `后继续执行命令 ssh-add ~/.ssh/id_rsa

`cat ~/.ssh/id_rsa.pub`

ssh-rsa AAAAB...

复制key到GitHub账号

`ssh -T git@github.com`			#验证key

Hi xxx! You've successfully authenticated, but GitHub does not provide shell  access.