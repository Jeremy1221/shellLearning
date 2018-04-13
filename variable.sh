
# 变量
myvar=thisisstring                  #变量赋值
echo $myvar                             #打印变量

printf "Enter new password: "           #提示输入
stty -echo                              #关闭自动打印输入字符的功能
#stty(set stty)命令用来控制终端的各种设置
#-echo 用来关闭自动打印功能
read pass < /dev/tty                    #读取密码
printf "\n"                             #换行
printf "Enter again: "                  #
read pass < /dev/tty                    #再度一次以确认
stty echo                               #打开自动打印输入的功能
printf "\n"                             #换行

# printf不会自动换行需要手动加入\n
# echo会自动换行

# printf可以打印格式

# 重定向与管道
# program < file 将program的标准输入改为file 覆盖file的内容
# program > file 将program的标准输出修改为file 
# program >> file 将program的标准输出附加到file的结尾 不会覆盖
# program1 | program2 可将program1的输出修改为program2的输入

# /dev/null
# /dev/tty
# UNIX系统提供了两个队shell编程特别有用的特殊文件。
# /dev/null就是大家所熟知的位桶，传送到此的文件都会被丢弃，相对的读取/dev/null则会立即返回文件结束符号
# 另一个特殊文件为/dev/tty。当程序打开此文件时时，UNIX会自动将它重定向到一个终端再与程序结合。
