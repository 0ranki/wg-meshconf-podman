FROM python:alpine

RUN pip install wg-meshconf
WORKDIR /mnt

CMD ["/bin/ash"]
