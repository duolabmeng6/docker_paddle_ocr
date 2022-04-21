docker build -f ./Dockerfile_app_chinese_ocr_crnn_mobile -t pyrun:cn_ocr_mobile .
docker rm -f pyrun_cn_ocr_mobile
docker run -itd --name pyrun_cn_ocr_mobile -p 9012:9000 pyrun:cn_ocr_mobile
docker logs pyrun_cn_ocr_mobile
docker diff pyrun_cn_ocr_mobile

#没问题的话就可以执行推送命令
#docker tag pyrun:cn_ocr_mobile registry.cn-hongkong.aliyuncs.com/duolabmeng/pyrun:cn_ocr_mobile
#docker push registry.cn-hongkong.aliyuncs.com/duolabmeng/pyrun:cn_ocr_mobile
