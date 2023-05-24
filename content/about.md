---
date: "2014-04-09"
title: "About"
---
偶尔更新一些内容

```cpp
#!/bin/bash

function ergodic(){
    for file in `ls -a $1`
    do
        if [ $file == . ] || [ $file == .. ] || [ $file == "kafka" ]
        then
            continue
        fi
        if [ -d $1/$file ]
        then
            ergodic $1/$file
        else
            md5sum $1/$file | sed s#$INIT_PATH/## >> $RECORDFILE
        fi
    done
}
#设置输出文件名
RECORDFILE=check.md5
#如果存在先删除，防止重复运行脚本时追加到记录文件
test -e $RECORDFILE && rm $RECORDFILE
#获取当前目录
INIT_PATH=`pwd`
#遍历所有文件
ergodic $INIT_PATH

#按文件名称排序
sort t -k 2 $RECORDFILE -o $RECORDFILE
```



```shell
#!/bin/bash

function ergodic(){
    for file in `ls -a $1`
    do
        if [ $file == . ] || [ $file == .. ] || [ $file == "kafka" ]
        then
            continue
        fi
        if [ -d $1/$file ]
        then
            ergodic $1/$file
        else
            md5sum $1/$file | sed s#$INIT_PATH/## >> $RECORDFILE
        fi
    done
}
#设置输出文件名
RECORDFILE=check.md5
#如果存在先删除，防止重复运行脚本时追加到记录文件
test -e $RECORDFILE && rm $RECORDFILE
#获取当前目录
INIT_PATH=`pwd`
#遍历所有文件
ergodic $INIT_PATH

#按文件名称排序
sort t -k 2 $RECORDFILE -o $RECORDFILE
```
