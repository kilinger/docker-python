FROM index.xxxxx.com/python:2-wsgi

RUN mkdir -p /app

WORKDIR /app

ONBUILD COPY . /app
ONBUILD RUN pip install -r requirements.txt --no-cache-dir --index-url http://pypi.xxxxx.com/prod/pypi/+simple/ --trusted-host pypi.xxxxx.com
