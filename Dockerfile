FROM alpine

RUN apk add --no-cache python2 py2-setuptools \
    && apk add --no-cache --virtual build-dependencies libffi-dev gcc musl-dev python-dev py2-pip openssl-dev \
    && pip2 install elastalert \
    && apk del build-dependencies

WORKDIR /elastalert

COPY entrypoint.sh ./

ENTRYPOINT ["./entrypoint.sh"]

CMD ["elastalert"]
