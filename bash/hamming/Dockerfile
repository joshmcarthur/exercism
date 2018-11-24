FROM alpine
RUN mkdir /src &&\
          apk add bash bats --update
ADD . /src
WORKDIR /src
ENTRYPOINT ["bats"]
CMD ["hamming_test.sh"]
