docker build -f ./Dockerfile_base_system -t pyrun:base_system .
docker rm -f pyrun_base_system
docker run -itd --name pyrun_base_system -p 9010:9000 pyrun:base_system
docker logs pyrun_base_system
docker diff pyrun_base_system

#没问题的话就可以执行推送命令
#docker tag pyrun:base_system registry.cn-hongkong.aliyuncs.com/duolabmeng/pyrun:base_system
#docker push registry.cn-hongkong.aliyuncs.com/duolabmeng/pyrun:base_system
