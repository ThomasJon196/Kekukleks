FROM python:3.9.13-slim-bullseye

WORKDIR /src

COPY website/requirements.txt ./

RUN pip install -r requirements.txt

COPY . .

RUN python manage.py runserver

EXPOSE 8000
