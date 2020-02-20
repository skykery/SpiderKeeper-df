# SpiderKeeper-df

Image containing SpiderKeeper webserver.

Sample configuration in docker-compose
```
    spiderkeeper:
      image: skykery/spiderkeeper:latest
      container_name: "spiderkeeper"
      environment:
        - SERVER=http://scrapyd:6800
        - USERNAME=username
        - PASSWORD=password
      expose:
        - "5000"
        - "6800"
      ports:
        - "5000:5000"
```
Where `SERVER` `USERNAME` `PASSWORD` are ENV vars for the next parameters:
```
  --server=SERVERS      servers, default: ['http://localhost:6800']
  --username=USERNAME   basic auth username ,default: admin
  --password=PASSWORD   basic auth password ,default: admin
```
[Official documentation](https://github.com/DormyMo/SpiderKeeper)
