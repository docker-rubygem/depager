FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.3.0.b20160729

RUN gem install depager --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["depager"]
CMD ["--help"]
