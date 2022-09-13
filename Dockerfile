FROM python:alpine

RUN pip install wg-meshconf
WORKDIR /mnt
