FROM python:3.9.1

RUN apt update && apt upgrade -y
RUN apt install git -y
RUN git clone https://github.com/jonathanong/heroku-buildpack-ffmpeg-latest
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /TigerShroff
WORKDIR /TigerShrroff
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
