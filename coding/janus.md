

https://github.com/efacilitation/docker-janus-webrtc-gateway

https://github.com/canyanio/janus-gateway-docker


git clone https://github.com/dangen-effy/docker-janus-webrtc-gateway





docker build -t janus .



docker run -d -p 80:80 -p 8088:8088 -p 8188:8188 janus


80: Web server

8088: RESTful API

8188: Websocket API

http://127.0.0.1


