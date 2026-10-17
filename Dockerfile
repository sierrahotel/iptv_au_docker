FROM python:3.12-slim

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN groupadd --gid 1000 hlsbroker && \
    useradd --uid 1000 --gid 1000 --no-create-home --shell /usr/sbin/nologin appuser

USER 1000:1000

CMD [ "python", "-u", "./app.py" ]
