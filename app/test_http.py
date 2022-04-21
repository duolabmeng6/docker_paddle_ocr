import requests
import base64

def ocr(imagePath):
    with open(imagePath, 'rb') as f:
        data = f.read(-1)
    image = str(base64.b64encode(data), encoding='utf-8')
    data = '{"images":["' + image + '"]}'
    txt = requests.post("http://runpy.rongyiapi.com/predict/chinese_ocr_db_crnn_mobile", data=data,
                        headers={'Content-Type': 'application/json'})
    return txt.content.decode("utf-8")

print(ocr("./test.png"))