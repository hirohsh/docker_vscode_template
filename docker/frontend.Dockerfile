FROM node:22.11.0-bullseye-slim

RUN groupadd -g 1100 app_user && \
    useradd -m -s /bin/bash -u 1100 -g 1100 app_user

RUN mkdir -p /opt/app && chown -R app_user:app_user /opt/app
WORKDIR /opt/app

USER app_user
