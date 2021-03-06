FROM python:3.6

ADD requirements.txt /deploy/
WORKDIR /deploy

RUN pip install -r requirements.txt

ADD ./src /deploy/src/
CMD [ "python", "-um", "src.rakomqtt" ]
