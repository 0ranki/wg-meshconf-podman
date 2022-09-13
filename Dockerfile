FROM python:alpine

RUN pip install wg-meshconf
WORKDIR /mnt
ADD entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/bin/ash"]
