FROM python:3.10.2-alpine3.15

MAINTAINER Igor Sverchkov <knjaz1989@gmail.com>

COPY ./stocks_products ./stocks_products

WORKDIR /stocks_products

RUN apk update && apk add nano

RUN python -m pip install --upgrade pip && pip install -r requirements.txt && pip install django-environ

#RUN python manage.py migrate

RUN pip install gunicorn && python manage.py collectstatic



