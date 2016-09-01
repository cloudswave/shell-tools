#!/bin/sh
# Description: 批量压缩子文件夹
# Author: ethanzhu
# Date: 2014-1-14 13:00:18
gzip_alldir(){
    # 这里不是'ls -a $1',而是`ls -a $1`
    for file in `ls -A $1`
    do
		if [ -d "$1/$file" ];then    
			echo $file
            tar -cvf $file."tar" $file
            gzip -vf $file."tar"
			# list_alldir "$1/$file"
        fi
    done
}
echo ">>> Start >>>"
gzip_alldir $1
echo "<<< Finish <<<"