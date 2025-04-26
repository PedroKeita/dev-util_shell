FROM ubuntu:latest

RUN apt update && apt install -y git bash && apt clean

WORKDIR /app

COPY . .

RUN chmod +x *.sh

CMD ["bash", "./git_operations.sh"]

