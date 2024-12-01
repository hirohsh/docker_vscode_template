FROM python:3.14.0a2-slim-bullseye

RUN groupadd -g 1100 app_user && \
    useradd -m -s /bin/bash -u 1100 -g 1100 app_user

RUN mkdir -p /opt/app && chown -R app_user:app_user /opt/app
WORKDIR /opt/app

ENV PYTHONUSERBASE=/home/app_user/.local
ENV PATH=$PYTHONUSERBASE/bin:$PATH

USER app_user

RUN pip install --user --upgrade pip
