FROM python:3

ENV PYTHONUNBUFFERED 1

RUN mkdir /code

WORKDIR /code

RUN apt-get update
RUN apt install -y build-essential libxml2-dev libxslt-dev zlib1g-dev \
    python3-dev python3-pip python3-venv \
    git pandoc texlive texlive-xetex

COPY requirements /code/requirements

RUN pip install -r requirements/base.txt
RUN pip install -r requirements/postgres.txt

COPY . /code

ENTRYPOINT ["bash" ,"/code/entrypoint.sh"]
