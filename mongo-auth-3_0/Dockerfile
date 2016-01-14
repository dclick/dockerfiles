# Mongo docker base image with authentication
# image: redspark/mongo-auth:3.0

FROM mongo:3.0
MAINTAINER redspark <infra@redspark.io>

USER root

ADD run.sh /run.sh
ADD set_mongodb_password.sh /set_mongodb_password.sh

# for changing password, just set MONGODB_PASS environment variable.
# ENV MONGODB_PASS pass

CMD ["/run.sh"]