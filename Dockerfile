FROM python:3.6-alpine
RUN apk update; apk upgrade
RUN apk del bzip2
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
CMD ["python", "app.py"]
