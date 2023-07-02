# materialui_img:1.0

FROM npm_img:1.0

WORKDIR /usr/app
COPY ./ /usr/app
RUN npm install @material-ui/core

ENTRYPOINT ["/bin/sh", "-c", "while true; do sleep 5; done"]
