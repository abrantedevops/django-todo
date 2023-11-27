FROM python:3

WORKDIR /data

COPY . .

RUN pip install django==3.2 psycopg2 psycopg2-binary

RUN python manage.py migrate

EXPOSE 8000

CMD ["python","manage.py","runserver","0.0.0.0:8000"]

