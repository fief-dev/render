ARG FIEF_VERSION
FROM ghcr.io/fief-dev/fief:${FIEF_VERSION}

WORKDIR /app

COPY pre-deploy.sh /app/pre-deploy.sh

# Tweak to enable SSH access
# See: https://render.com/docs/ssh#limitations
RUN mkdir ~/.ssh
