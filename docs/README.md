Playbook 主体结构
  - group_vars:组变量
  - roles:角色
  - main.yml : playbook入口文件

roles 结构

 - files: 需要上传的文件

 - handlers: 服务重启

 - tasks: 核心任务部分

 - templates: 模板文件,多用于需要动态改变的配置文件

 - meta: 保存当前roles所依赖的其他roles信息(当前roles运行前所需要的roles)

 - defaults: 保存当前roles默认变量

group_vars 结构
 - all.yml: 组变量


roles 编写注意事项:
 1. 尽量可以单独使用
 2. 不能单独使用的,一定要在 meta中声明依赖关系,比如在php需要依赖apache,写法看本模板中example中的 meta 
 3. 上传的配置文件存在多版本问题 使用template模块上传 配置文件差异使用jinja模板处理


变量注意事项:
  1. 变量优先级 -e 选项指定的变量 > group_vars > inventory 主机清单中定义的变量 > play剧本中vars
  2. roles中的变量修改使用优先级覆盖,使用-e参数以及group_vars,保持roles变量默认
  3. remote_user 变量 默认root,为了适应aws和azure,使用-e覆盖[-e remote_user=ubuntu]

common 和 final 默认是空文件夹 运行是会从GitHub上clone下来,common 和 final 已经clone 则会更新,以保持最新

**play编写尽量使用模块,少用shell,command等模块**



**随机密码生成统一采用**

  `pwgen -ncCs 10 1`

```
参数：
-c or –capitalize
密码中至少包含一个大写字母

-n or –numerals
密码中至少包含一个数字

-C
在列中打印生成的密码

-s or –secure
生成完全随机密码
```



### 数据库额外变量(用于创建数据库和用户)
```
额外创建的数据库用户
extra_db_user

额外创建的数据库
extra_db

额外创建的数据库密码
extra_db_password

mysql role 判断以上变量是否有值和变量是否定义,未定义变量或者变量未赋值将不会创建用户或者数据库 password.txt 模板将不会保存额外创建的数据库/用户/密码等信息
```


说明:  项目入口处加入变量

```
- name: main
  hosts: all
  become: yes
  become_method: sudo
  become_user: root
  vars:
    extra_db_user: db_user
    extra_db: db_name
    extra_db_password: db_pass


```


### 应用自己创建数据库或数据库用户,可以参考以下方式获取数据库信息,然后赋值变量

```
# 获取数据库名称,并存放在注册变量
- name: Get DB Name
  shell: cat /xx/xxx/xx
  register: db_name

# 获取数据库用户称,并存放在注册变量
- name: Get DB User
  shell: cat /xx/xxx/xx
  register: db_user

# 获取数据库用户密码,并存放在注册变量
- name: Get DB pass
  shell: cat /xx/xxx/xx
  register: db_pass

# 将注册变量重新赋值,以供项目中password.txt以及后面的initdb role使用
- set_fact:
    extra_db_user: '{{db_name.stdout}}'
    extra_db: '{{db_user.stdout}}'
    extra_db_password: '{{db_pass.stdout}}'



```