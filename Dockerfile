FROM python:3.6-alpine

ENV SERVER http://localhost:6800
ENV USERNAME admin
ENV PASSWORD admin

RUN apk update &&\
    apk add tzdata --no-cache  &&\
    ln -sf /usr/share/zoneinfo/Europe/Bucharest /etc/localtime &&\
    echo "Europe/Bucharest" > /etc/timezone
RUN pip install --no-cache-dir spiderkeeper
EXPOSE 5000 6800
WORKDIR /home/db
CMD ["sh", "-c", "spiderkeeper --username=$USERNAME --password=$PASSWORD --server=$SERVER"]
