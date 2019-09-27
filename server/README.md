# 接口设计

/api

​	/users

​	GET	/users	获取用户信息

​	POST	/users	添加用户

​	PUT	/users	更新用户

​	PATCH	/users	更新用户部分字段

​	DELETE	/users	删除用户

​	/sessions

​	GET	/sessions	获取会话信息

​	POST	/sessions	登录

​	PUT	/sessions	更新会话，延长会话时效

​	DELETE	/sessions	退出登录

​	/books

​	GET	/books	获取书籍

​	POST	/books	添加书籍

​	PUT	/books	更新书籍

​	PATCH	/books	更新书籍部分字段

​	DELETE	/books	删除书籍

​	/chapters

​	GET	/chapters	获取章节

​	POST	/chapters	添加章节

​	PUT	/chapters	更新章节

​	PATCH	/chapters	更新章节部分字段

​	DELETE	/chapters	删除章节

​	/crawlers

​	GET	/crawlers	获取爬虫信息

​	POST	/crawlers	添加爬虫

​	PUT	/crawlers	更新爬虫

​	PATCH	/crawlers	更新爬虫部分字段

​	DELETE	/crawlers	删除爬虫

返回值

```json
{
	status: number,
	msg: string,
	data: []
}
```



### 目录结构

/bin

/api

/config

/scripts

Dockerfile

.dockerignore

pageckage.json

README.md

