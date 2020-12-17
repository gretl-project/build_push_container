# Build and push Gretl Docker image
[![Actions Status](https://github.com/gretl-project/build_push_container/workflows/Publish%20Docker%20Image/badge.svg)](https://github.com/gretl-project/build_push_container/actions)

[![Actions Status](https://github.com/gretl-project/build_push_container/workflows/Greetings/badge.svg)](https://github.com/gretl-project/build_push_container/actions)

This repository includes a github action workflow for:

1) Building a Docker container using ubuntu:20.04 with latest available Gretl pulled from the original sourceforge.org repo and freshly compiled.\
2) Push the container to GHRC (github container registry) for public use.

The public Gretl Docker image can be obtained from here:
https://github.com/users/gretl-project/packages/container/package/docker_container


## Cron job for building the image
The Cron build process is scheduled to "0 18 * * 5" (Every Friday at 06:00 pm).


# References + helper videos on github actions, container etc.
- https://youtu.be/FYIRvqdP3pQ \
- https://youtu.be/09lZdSpeHAk \
