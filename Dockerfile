FROM ubuntu:latest

RUN apt-get update && apt-get install -y python3 python3-pip

COPY out/src /hello-world-app

WORKDIR /hello-world-app

CMD ["python3", "main.py"]

