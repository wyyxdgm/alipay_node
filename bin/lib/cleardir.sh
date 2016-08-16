function ergodic(){
for file in `ls $1`
do
                if [ -d $1"/"$file ] #如果 file存在且是一个目录则为真
                then
                      ergodic $1"/"$file
                else
                      local path=$1"/"$file #得到文件的完整的目录
                      local name=$file       #得到文件的名字
                      #做自己的工作.
                      echo '' > ${path}
               fi

done
}
ergodic ${@}