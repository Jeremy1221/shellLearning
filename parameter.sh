# 基本命令查找：
# 简单来说就是当我们写了一个shell脚本文件，运行该脚本时要先切换到该目录中
# 然后才能运行该文件，但是如果我们加入了路径，就可以不在该目录下也可以直接运行。

# shell会沿着查找路径$PATH来寻找命令。$PATH是一个以冒号分割的目录列表
# $ echo $PATH 
# 可以查看所有路径

cd                              #切换到home目录
mkir bin                        #建立个人bin目录
mv nusers bin                   #将脚本置入该目录
PATH=$PATH:$HOME/bin            #将个人的bin目录附加到PATH
nusers                          #试试看

要让修改永久生效，在.profile文件中把你的bin目录加入$PATH，而每次登录时Shell都将读取


# cat > finduser

# chmod +X finduser
# ./findusers