FROM python:3.8-slim-buster

WORKDIR /app

COPY pyproject.toml poetry.lock ./

RUN pip install poetry

RUN poetry export --without-hashes --format requirements.txt > requirements.txt \
	&& pip install --no-cache-dir -r requirements.txt

COPY docker-entrypoint.sh .

COPY . .

ENTRYPOINT ["./docker-entrypoint.sh"]

EXPOSE 8866
