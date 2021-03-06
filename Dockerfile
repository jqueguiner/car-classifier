FROM guignol95/ai_apis:latest

RUN mkdir -p /src

WORKDIR /src

ADD requirements.txt /src

RUN pip3 install -r requirements.txt

ADD utils.py /src
ADD app_utils.py /src
ADD resnet_152.py /src
ADD custom_layers /src/custom_layers
ADD devkit /src/devkit

ADD app.py /src

EXPOSE 5000

ENTRYPOINT ["python3"]

CMD ["app.py"]
