# AnalyticOps External Docker Images

### Overview
This repository holds the dockerfiles for all the base images used in the Analytics Ops Accelerator.

### How to build the images

The images should be built by using the [Azure Pipeline](./azure-pipelines.yml). It is intended to be triggered manually, and some variables should be set in the pipeline UI prior running it in order to build and push the images:


The main concepts and entities we support in the framework are

| Variable Name | Type | Description   |
|---------------|------|:-------------:|
| DOCKER_ENABLE_RUN | Boolean | Enables or disables the build. Values: true, false. |
| DOCKER_IMAGE_NAME | String | Name for the new docker image, same as the dockerfile. |
| DOCKER_IMAGE_TAG  | String | Tag for the new docker image. |
| DOCKER_REPOSITORY_URI  | String | Uri of the repository (without the image name) |
**Example:**
```
DOCKER_ENABLE_RUN=true
DOCKER_IMAGE_NAME=aoa-base-image
DOCKER_IMAGE_TAG=1.0.0
DOCKER_REPOSITORY_URI=public.ecr.aws/teradata
```

The resulting image will be `thinkbiganalytics/aoa-base-image:1.0.0`

### List of available images

- [aoa-pyspark-base](./aoa-pyspark-base)
- [aoa-python-base](./aoa-python-base)
- [aoa-r-base](./aoa-r-base)
- [aoa-scheduler](./aoa-scheduler)
