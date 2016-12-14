#!/bin/bash
#####-----------------------变量------------------------------#########
readonly mRoModuleName=test.sh
#####----------------------初始化demo环境--------------------------#######
# 函数
if [ -f ${mRoDirPathCmdModule}/${mRoFileNameCmdModuleTools} ];then
	source  ${mRoDirPathCmdModule}/${mRoFileNameCmdModuleTools}
else
	echo -e "\033[1;31m	函数加载失败\n\
	模块=$mRoModuleName\n\
	toolsPath=${mRoDirPathCmdModule}/${mRoFileNameCmdModuleTools}\n\
	\033[0m"
fi

dirNameDebug=temp
dirPathHome=/home/${mRoNameUser}/${dirNameDebug}
dirPathHomeDebug=/home/${mRoNameUser}/${dirNameDebug}
if [ -d $dirPathHome ];then
	if [ ! -d $dirPathDebug ];then
		mkdir  $dirPathDebug
		ftEcho -s 测试用目录[$dirPathDebug]不存在，已新建
	fi
	cd $dirPathDebug
else
	echo -e "\033[1;31m	初始化demo环境失败\n\
	模块=$mRoModuleName\n\
	dirPathHome=$dirPathHome\n\
	\033[0m"
fi

#####----------------------demo函数--------------------------#########
#b=${a/123/321};将${a}里的第一个123替换为321\
val=2
if (( val!=1 ))&&[ $val -ne 3 ];then
	echo 123
fi
