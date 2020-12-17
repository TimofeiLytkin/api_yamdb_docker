FROM python:3.7.7

RUN mkdir /code
WORKDIR /code
COPY . /code
RUN pip install -r requirements.txt
RUN python3 manage.py collectstatic --noinput
