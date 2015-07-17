FROM ruby:2.2.2
MAINTAINER Robby Ranshous <rranshous@gmail.com>

ADD . /app
RUN cd /app && bundle install
WORKDIR /app
EXPOSE 80

ENTRYPOINT ["bundle", "exec"]
CMD ["ruby", "app.rb", "-p", "80", "-o", "0.0.0.0"]
