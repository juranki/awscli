FROM python:2-alpine

RUN apk add --no-cache \
		ca-certificates \
		openssl

RUN pip install awscli \
  && mkdir ~/.aws \
  && touch ~/.aws/credentials \
  && touch ~/.aws/config
