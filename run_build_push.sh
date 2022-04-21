docker build -f ./Dockerfile -t pyrun:1.0 .
docker rm -f pyrun
docker run -itd --name pyrun -p 9007:9000 pyrun:1.0
docker logs pyrun
docker diff pyrun

#没问题的话就可以执行推送命令
#docker tag pyrun:1.0 registry.cn-hongkong.aliyuncs.com/duolabmeng/pyrun:2.2.2
#docker push registry.cn-hongkong.aliyuncs.com/duolabmeng/pyrun:2.2.2
