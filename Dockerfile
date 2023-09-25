FROM python:3.5-alpine

EXPOSE 5000

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py /usr/src/app/app.py

CMD [ "python", "app.py" ]
