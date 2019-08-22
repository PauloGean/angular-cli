FROM alexsuch/angular-cli:base


RUN apk update \
  && npm install -g @angular/cli@8.2.2 \
  && rm -rf /tmp/* /var/cache/apk/* *.tar.gz ~/.npm \
  && npm cache clear --force \
  && yarn cache clean \
  && sed -i -e "s/bin\/ash/bin\/sh/" /etc/passwd
