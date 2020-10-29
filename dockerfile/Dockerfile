FROM node:15-alpine
ENV INSTALL_PROJECT_PATH /project
RUN mkdir -p $INSTALL_PROJECT_PATH
WORKDIR $INSTALL_PROJECT_PATH
COPY ./src .
RUN npm install
CMD ["npm","start"]
