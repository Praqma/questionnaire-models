# questionnaire-models
Questionnaire content for our models like Maturity model and OPS model.

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