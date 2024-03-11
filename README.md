# Netflix sample project

This is a project showcasing how to deploy a Latitude Framework application to Fly.io. Latitude provides a set of tools to help developers build data apps on top of any database or data warehouse using just SQL and HTML.

## Demo

You can find a live demo of this project at the following URL: [Live Demo →](https://latitude.so/app/share/b592cd31-1c22-40b1-bd6c-e440d98a0ac6)

![image](https://github.com/latitude-dev/latitude-sdk-sample/assets/5465249/371f8e34-dbe5-4684-b684-64022cb1b38b)

## Developing

To start developing in this project, first ensure you have Node.js >= 18 installed. Then, install the Latitude CLI:
```
npm install -g latitude-cli
```

After cloning the repository, run the following command to spin up the dev server:
```
latitude dev
```
This will start the server in development mode, and you can access the application at `http://localhost:3000`.

## Deploying to production
To deploy to Fly.io we need to first install the Fly.io command line tool. You can do this by running the following command:

```
curl -L https://fly.io/install.sh | sh
```

After installing the Fly.io CLI, you can initialize your project in Fly.io running the following command:

```bash
fly launch
```

Fly will detect the Dockerfile and Fly.io configuration included in this project and will ask you to confirm the settings. After confirming, you can deploy the application by running:

```bash
fly deploy
```

See more details on how to deploy to Fly.io in the [official documentation](https://fly.io/docs/getting-started/first-deploy/).

## Documentation

To find more about how to use Latitude, refer to the [main repository](https://github.com/latitude-dev/latitude).
