FROM ruby:2.2.2
MAINTAINER Robby Ranshous <rranshous@gmail.com>

ADD . /app
RUN cd /app && bundle install
WORKDIR /app
EXPOSE 5000

ENTRYPOINT ["bundle", "exec"]
CMD ["ruby", "app.rb", "-p", "5000", "-o", "0.0.0.0"]
