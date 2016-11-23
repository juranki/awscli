FROM python:2-alpine

RUN apk add --no-cache \
		ca-certificates \
		openssl \
		zip

RUN pip install awscli boto3 \
  && mkdir ~/.aws \
  && touch ~/.aws/credentials \
  && touch ~/.aws/config
