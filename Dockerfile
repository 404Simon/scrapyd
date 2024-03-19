FROM python:3.11

ENV PYTHONUNBUFFERED 1

COPY requirements.txt /requirements.txt
RUN pip install --no-cache-dir -r /requirements.txt

RUN mkdir /etc/scrapyd
RUN mkdir -p /scrapyd/logs
COPY scrapyd.conf /etc/scrapyd/

EXPOSE 6800

CMD ["scrapyd"]