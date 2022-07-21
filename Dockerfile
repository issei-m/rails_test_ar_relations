FROM ruby:3.1-alpine3.15

ENV TZ=Asia/Tokyo
RUN apk --no-cache upgrade
RUN apk add --no-cache tzdata libc6-compat build-base sqlite-dev bash

WORKDIR /opt/app
COPY . .
RUN bundle install

RUN adduser -D rails && chown -R rails.rails /opt/app
USER rails
ENV PATH /opt/app/bin:$PATH
ENTRYPOINT ["bash"]
CMD []
