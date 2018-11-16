FROM python:3.6.5

RUN apt-get update && apt-get install -y postgresql-client wait-for-it

COPY Pipfile Pipfile
COPY Pipfile.lock Pipfile.lock

RUN pip install pipenv
RUN pipenv install --system --dev
