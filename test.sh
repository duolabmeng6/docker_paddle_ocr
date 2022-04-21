docker build -f ./Dockerfile2 -t pyrun:test2 .
docker rm -f pyrun_test2
docker run -itd --name pyrun_test2 -p 9010:9000 pyrun:test2
docker logs pyrun_test2
docker diff pyrun_test2

#没问题的话就可以执行推送命令
docker tag pyrun:test2 registry.cn-hongkong.aliyuncs.com/duolabmeng/pyrun:test2
docker push registry.cn-hongkong.aliyuncs.com/duolabmeng/pyrun:test2
