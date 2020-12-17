# Build and push Gretl Docker image
![Publish Docker Image](https://github.com/gretl-project/build_push_container/blob/main/.github/workflows/build-publish.yml/badge.svg)
![Greet everyone](https://github.com/gretl-project/build_push_container/blob/main/.github/workflows/greetings.yml/badge.svg)

This repository includes a github action workflow for:

1) Building a Docker container using ubuntu:20.04 with latest available Gretl pulled from the original sourceforge.org repo and freshly compiled.\
2) Push the container to GHRC (github container registry) for public use.


## Cron job for building the image
The Cron build process is scheduled to "0 18 * * 5" (Every Friday at 06:00 pm).


# References + helper videos on github actions, container etc.
- https://youtu.be/FYIRvqdP3pQ \
- https://youtu.be/09lZdSpeHAk \
