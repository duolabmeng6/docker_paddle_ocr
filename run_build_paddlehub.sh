docker build -f ./Dockerfile_paddlehub -t pyrun:paddlehub222 .
docker rm -f pyrun_paddlehub
docker run -itd --name pyrun_paddlehub -p 9011:9000 pyrun:paddlehub222
docker logs pyrun_paddlehub
docker diff pyrun_paddlehub

#没问题的话就可以执行推送命令
#docker tag pyrun:paddlehub222 registry.cn-hongkong.aliyuncs.com/duolabmeng/pyrun:paddlehub222
#docker push registry.cn-hongkong.aliyuncs.com/duolabmeng/pyrun:paddlehub222
