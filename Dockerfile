FROM python:3.10-alpine
RUN apk add postgresql-dev gcc python3-dev musl-dev
WORKDIR /code
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
RUN pip install uvicorn
COPY . .
CMD ["sh","entrypoint.sh"]