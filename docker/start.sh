
appName="front"
word="1"
echo "$word"
word=`docker ps -a -q --no-trunc --filter name=^/"$appName"$`
echo "$word"
if [ -z "$word" ];
then
    echo "当前不存在该容器，直接进行启动该操作-------------------------------------"
elif [ -n "$word" ];
then
    echo "当前已存在容器，停止并移除该容器-------------------------------------"
    /usr/bin/docker stop "$word"
    /usr/bin/docker rm "$word"
    /usr/bin/docker rmi `(docker images "$appName")$`
elif [ "$word" == "1" ];
then
    echo "查询的信息有误，执行默认操作-------------------------------------"
    /usr/bin/docker stop "$word"
    /usr/bin/docker rm "$word"
fi
/var/maven/bin/mvn clean package -P spring-boot docker:build
/usr/bin/docker run -d --name "$appName" "$appName":latest -p 80:8080 --net novel-tier -e dburl=\"jdbc:mysql://mysql:3306/novel?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=Asia/Shanghai\" -e username=\"novel\" -e password=\"novel\"
