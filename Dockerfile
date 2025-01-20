FROM python:3.12
RUN pip install poetry
COPY . /src
WORKDIR /src
RUN poetry install
EXPOSE 8501
ENTRYPOINT ['poetry', 'run', 'uvicorn', 'main:app', '--host', '0.0.0.0', '--port', '8501']