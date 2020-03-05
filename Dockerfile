FROM python:3.6-slim

RUN apt-get update && apt-get install -y bash build-essential ncurses-dev python3 python3-dev python3-pip && \
    pip3 install --upgrade setuptools pip wheel
RUN pip install pyaff4==0.26 future==0.16.0
RUN pip install rekall==1.7.2rc1

WORKDIR /data
ENTRYPOINT [ "rekall" ]
