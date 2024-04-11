
FROM fedora:38

# install dependencies
RUN dnf install -y php
RUN dnf install -y nginx-all-modules

# APP_DIR -- application dir
# MYSQL_HOST
# MYSQL_PORT
# MYSQL_USERNAME
# MYSQL_PASSWORD
ENV NTZOE_ROOT_DIR=/ntzoe

RUN mkdir ${NTZOE_ROOT_DIR}

WORKDIR ${NTZOE_ROOT_DIR}/php-crt
