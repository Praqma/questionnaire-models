# Questionnaire Models

Content repository for our models like Maturity model and OPS model.

This repository is purely content and deployment information, serving several questionnaires.

The "engine" is found in https://github.com/Praqma/questionnaire-engine.

## Content

```sh
.
├── content/        # an arbitrary number of questionnaires live in this dir
│   ├─── form1/
│   ├─── form2/
│   ├─── ...
│   └─── formX/
├── Dockerfile      # used to build the image
├── .dockerignore   # ignore files that are copied into container
└── README.md
```

## Customize

If you want to release your own questionnaire website you can fork this repo and replace the questionnaires in the `content/` folder. The forms you store here will be copied into your image automatically. See the [Dockerfile](/Dockerfile) for more information on your environment.

To build and start the web app with your own content run these commands

```shell
# Build image with your content using the engine as base image
docker build -t my-questionnaire:1.0 .

# Verify your image has been created
docker images

# Spin up a container - will expose the app on port 8080 and attach a terminal
docker run -it -p 8080:3000 my-questionnaire:1.0
```