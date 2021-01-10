FROM node:14-alpine

WORKDIR /usr/app
ENV NODE_ENV=production
EXPOSE 3000

# Installing dependencies
COPY package.json .
RUN yarn Install

COPY . .
CMD [ "yarn", "start" ]