FROM python:3.6-alpine

ENV SERVER http://localhost:6800

RUN apk update &&\
    apk add tzdata --no-cache  &&\
    ln -sf /usr/share/zoneinfo/Europe/Bucharest /etc/localtime &&\
    echo "Europe/Bucharest" > /etc/timezone
RUN pip install --no-cache-dir spiderkeeper
EXPOSE 5000 6800
CMD ["spiderkeeper --server=${SERVER}"]
