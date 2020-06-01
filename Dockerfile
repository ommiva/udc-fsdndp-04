FROM python:stretch

COPY . /flaskapp
WORKDIR /flaskapp

RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN pip install gunicorn


ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]


