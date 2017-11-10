#!/bin/bash
#####-----------------------变量------------------------------#########
readonly rModuleName=test/base.sh
#####----------------------初始化demo环境--------------------------#######
# 函数
if [ -f $rFilePathCmdModuleToolsSpecific ];then
    source  $rFilePathCmdModuleToolsSpecific
else
    echo -e "\033[1;31m    函数加载失败\n\
    模块=$rModuleName\n\
    toolsPath=$rFilePathCmdModuleToolsSpecific\n\
    \033[0m"
fi

dirNameDebug=temp
dirPathHomeDebug=${rDirPathUserHome}/${dirNameDebug}
if [ -d $rDirPathUserHome ];then
    if [ ! -d $dirPathHomeDebug ];then
        mkdir  $dirPathHomeDebug
        ftEcho -s 测试用目录[$dirPathHomeDebug]不存在，已新建
    fi
    cd $dirPathHomeDebug
else
    echo -e "\033[1;31m    初始化demo环境失败\n\
    模块=$rModuleName\n\
    rDirPathUserHome=$rDirPathUserHome\n\
    \033[0m"
fi

# -eq =     -ne !=
# -gt  >      ge >=
# -lt   <      le <=

# if [ $test1 = "1" -o $test2 = "1" ]&&[ $test3 = "3" -a $test4 = "4" ]
# -o 或    # -a 与

# echo 文件名: ${file%.*}”
# echo 后缀名: ${file##*.}”
# ${dirPathFileList%/*}父目录路径
# ${dirPathFileList##*/}父目录名
# `basename /home/wgx` wgx
# `dirname /home/wgx` /home
#sed -i 's/被替换的内容/要替换成的内容/' file #内容包含空格需要转义
#sed -i "s:被替换的内容:要替换成的内容:g" file #被替换的内容为路径，内容包含空格需要转义

#filenumbers= ls -l /media/data_self/backup/os |grep '.tgz'|grep "^-"|wc -l #文件数量获取
#b=${a//123/321} #将${a}里的所有123替换为321\

# versionName=$(echo $versionName |sed s/[[:space:]]//g) #删除所有空格

# LOWERCASE=$(echo $VARIABLE | tr '[A-Z]' '[a-z]') #转小写

# 分割字符串成数组bnList=$(echo $branchName|tr ")" "\n")

# 字符串包含if [[ helloworld == *low* ]];then

# 路径替换
# a=/aa2344aa/123bb
# echo b=$(echo $a | sed "s 123/  222/ ")

# note=${note:-'常规'}

# 遍历目录
#ls /home/test/ | while read line
#do
#    echo $line
#done

# 倒序遍历数组
# i=${#hashLIst[@]}
# while [ $i -gt "0" ]
# do
#   let i--
#   #${hashLIst[$i]}
# done

# 根据包名 过滤log
# adb logcat -v process | grep $(adb shell ps | grep com.android.systemui | awk '{print $2}')

# 把.git 以2048M为界压缩成 MTK6580L.tar. aa MTK6580L.tar. ab ......
# pigz 分包压缩 tar --use-compress-program=pigz -cvpf .git |split -b 2048m - MTK6580L.tar. 

# 遍历 ls 输出内容
# ls xxxxx | while read line;do echo $line ;done

# adb 模拟输入
# adb shell input text "526541651651"

# 对比文件不同
#diff 文件1 文件2

#算术运算
#$[ $dff+1 ]
mTimingStart=$(date +%s -d $(date +"%H:%M:%S"))
# ===================================================================================================================================
#####-------------------------------------------------------------------------#########
#####---------------   demo函数     $2为第一个参数 -------------#########
#####---------------------------------------------------------------------------#########
# ===================================================================================================================================
# cd /media/data/ptkfier/code/mtk6580L/alps
# git tag -a "$2" -m "Release version $2"
# git push origin --tags


# dirPathProcessEnableId=/tmp/ProcessEnableIds
# rm -rf $dirPathProcessEnableId
# mkdir $dirPathProcessEnableId

# for (( i = 0; i <2; i++ )); do
#     if [[ -z "$size" ]]; then
#         size=1000
#         stae=true
#     else
#         stae=false
#     fi
#     echo $stae>${dirPathProcessEnableId}/${size}
#     gnome-terminal -x bash -c "${rDirPathCmdModuleTools}/build.sh $size"
#     gnome-terminal -e 'bash -c "read dd"'  --window --tab -e 'bash -c "echo 11;read ff"'
#     size=`expr $size - 1`
# done

 while true; do
            sleep 1200
            ftKillPhoneAppByPackageName com.android.launcher3
            echo "$(date -d "today" +"%y%m%d_%H:%M:%S") reboot launcher3" >> ~/temp/Launcher3_1711091914.log
    done