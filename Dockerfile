FROM python:3

ENV PYTHONUNBUFFERED 1

RUN mkdir /code

WORKDIR /code

COPY requirements /code/requirements

RUN pip install -r requirements/base.txt
RUN pip install -r requirements/postgres.txt

COPY . /code

ENTRYPOINT ["bash" ,"/code/entrypoint.sh"]
