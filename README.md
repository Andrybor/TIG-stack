# TIG-stack-.NET-MongoDB-Elastic-Nginx-Docker-
Using TIG stack setup monitoring for .NET WEB API(collect metrics with Prometheus), MongoDB, Elastic, Nginx. Up by docker-compose

[![LinkedIn][linkedin-shield]][linkedin-url]



<!-- PROJECT LOGO -->
<br />
<img width="1440" alt="Screenshot 2022-08-30 at 20 59 02" src="https://user-images.githubusercontent.com/34246721/187523737-f2c7edc2-fbac-4b18-b92e-3387ef81a853.png">


### Built With

1. Docker
2. .NET 6
3. Elastic Search
4. Mongodb
5. Nginx
6. Grafana
7. Telegraf
8. InfluxDb
9. Prometheus


### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/Andrybor/TIG-stack.git
   ```
3. Docker
   ```sh
   docker build . -f projectorapi
   docker build . -t nginx.Dockerfile -f projectorapi.nginx
   docker-compose up -d
   ```
4. Connect Influxdb to grafana
   ```js
   https://www.youtube.com/watch?v=QGG_76OmRnA
   ```
5. Nginx conf ip change
   ```js
   Change nginx.conf allow 192.168.144.1; on your own which you can find in docker logs
   ```
6. Setup metrics in Grafana
   ```js
   https://www.youtube.com/watch?v=QGG_76OmRnA
   ```


[linkedin-url]: https://www.linkedin.com/in/andrii-borysenko-68a8a518a/
