FROM v2fly/v2fly-core:v4.36.2
LABEL version="4.36.2" \
maintainer="apple@dwnews.com"

#RUN ["sh","-c","cp /etc/apk/repositories /etc/apk/repositories.origin"]
#RUN echo "https://mirror.tuna.tsinghua.edu.cn/alpine/v3.4/main/" > /etc/apk/repositories
RUN apk update \
&& apk upgrade \
&& apk add --no-cache bash \
bash-doc \
bash-completion \
&& rm -rf /var/cache/apk/*
# && /bin/bash

# RUN ["/bin/bash","-c","groupadd -r v2ray && useradd -r -g v2ray v2ray"]
# RUN ["/bin/bash", "-c", "echo hello"]
# RUN ["/bin/bash", "-c", "addgroup -S v2ray"]
# RUN ["/bin/bash", "-c", "adduser -S v2ray -G v2ray"]

ENV V2RAY_CONFIG_PATH=/etc/v2ray/
ENV V2RAY_CONFIG_FILE=server_config.json
# ARG V2RAY_CONFIG_PATH=/etc/v2ray/
# WORKDIR ${V2RAY_CONFIG_PATH}
ADD ./v2ray_server_config/${V2RAY_CONFIG_FILE} ${V2RAY_CONFIG_PATH}/config.json
# docker run -p 80:80/tcp -p 80:80/udp ...
# WORKDIR ${V2RAY_CONFIG_PATH}
# RUN cp server_config.json config.json
EXPOSE 38388/tcp
# RUN echo ${V2RAY_CONFIG_PATH}
# RUN echo "$1"
# EXPOSE 38388/udp
# You can view the values using docker inspect, and change them using docker run --env <key>=<value>
# RUN ["/bin/bash","-c","apt-get update && apt-get install -y --force-yes apache2"]
# RUN ["/bin/bash","-c","git clone https://github.com/505793872/ubuntu.git"]
# RUN ["/bin/bash","-c", "echo hello"]
# CMD [ "sh","-c", "echo ${MY_NAME} ${MY_DOG},${MY_CAT}" ]
# COPY ./docker-entrypoint.sh /
CMD [ "/usr/bin/v2ray","-config", "/etc/v2ray/config.json" ]
# ENTRYPOINT ["/docker-entrypoint.sh"]
# CMD ["v2ray"]
