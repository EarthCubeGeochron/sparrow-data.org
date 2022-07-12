# This actually is built from the base directory, NOT the docs directory.
# Simple dockerfile: https://github.com/vercel/next.js/blob/canary/examples/with-docker/Dockerfile

FROM node:16

RUN yarn set version berry

WORKDIR /docs
# Copy files needed for installation
COPY ./docs/package*.json ./docs/yarn* /docs/

# Install node modules
# Should use `npm ci` but there are errors
RUN yarn

COPY ./docs/ /docs/
# Put the "get-sparrow.sh" script in the root of the site
COPY ./Sparrow/get-sparrow.sh /docs/public/

ENV NODE_ENV production

RUN yarn run build

EXPOSE 3000

CMD ["yarn", "run", "start"]