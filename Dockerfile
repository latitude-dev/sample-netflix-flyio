FROM node:18 AS builder

RUN npm install -g @latitude-data/cli

FROM builder AS runner

WORKDIR /usr/src/app

# copy folders queries and views into workdir
COPY . .

RUN latitude telemetry --disable
RUN latitude build

WORKDIR /usr/src/app/build

EXPOSE 3000

CMD ["node", "build"]

