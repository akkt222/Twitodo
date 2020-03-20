FROM ruby:2.6.3
RUN apt-get update -qq && apt-get install -y nodejs yarn chromium-driver
RUN apt-get -q -y install mysql-server
ADD mysql/charset.cnf /etc/mysql/conf.d/
RUN mysql_install_db
RUN chown -R mysql:mysql /var/lib/mysql
ADD mysql/startup.sh /startup.sh
RUN chmod 755 /startup.sh
RUN ./startup.sh

RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN gem install bundler # 追記
RUN bundle install
COPY . /myapp
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
