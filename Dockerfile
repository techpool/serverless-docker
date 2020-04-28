FROM node:12-alpine

LABEL maintainer="Suryadeep Pal <suryadeep10@gmail.com>"

# Install serverless CLI
RUN yarn global add serverless && yarn cache clean

# Version / PATH Checks
RUN echo "nodejs: $(node --version)" && \
    echo "npm: $(npm --version)" && \
    echo "yarn: $(yarn --version)" && \
    echo "serverless: $(serverless --version)"

ENTRYPOINT [ "serverless" ]