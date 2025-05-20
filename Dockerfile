FROM python:3.10-slim

RUN apt-get update && apt-get install -y git
   
RUN pip install PyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
