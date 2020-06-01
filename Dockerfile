FROM python:stretch

COPY . /flaskapp
WORKDIR /flaskapp

RUN pip install --upgrade pip
RUN pip install flask
RUN pip install gunicorn


ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]


