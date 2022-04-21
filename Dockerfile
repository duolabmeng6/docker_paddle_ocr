FROM python:3.7.10-slim

RUN apt update && apt install g++ libglib2.0-dev libgl1-mesa-glx libsm6 libxrender1 libgl1 -y \
     && apt-get clean && rm -rf /root/.cache/* && rm -rf /var/lib/apt/lists/*

COPY app /app
WORKDIR /app

RUN pip3 install --no-cache-dir -r /app/requirements.txt -i https://mirror.baidu.com/pypi/simple

ADD /app/app_compat.py /usr/local/lib/python3.7/site-packages/paddlehub/serving/app_compat.py

RUN hub install chinese_ocr_db_crnn_mobile

EXPOSE 9000
CMD ["/bin/bash","-c","hub serving start -m chinese_ocr_db_crnn_mobile -p 9000"]
