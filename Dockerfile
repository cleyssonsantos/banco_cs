FROM python:3.11.3-alpine3.17

WORKDIR /app

COPY ./app /app

CMD ["python", "index.py"]
