# Run with `docker run -p 9099:9099 aircontrol/underlord-server`
from python:3.7.1

EXPOSE 9099

RUN apt-get install git
RUN git clone https://github.com/hpoggie/underlord-server.git
WORKDIR underlord-server

CMD ["python", "lobbyServer.py"]
