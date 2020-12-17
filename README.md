# Build and push Gretl Docker image
This repository includes a github action workflow for:

1) Building a Docker container using ubuntu:20.04 with latest available Gretl pulled from the original sourceforge repo and freshly compiled.\
2) Push the container to GHRC (github container registry) for public use.


## Cron job for building the image
The Cron build process is scheduled to "0 7 1 * *" (“At 07:00 on day-of-month 1.”).



# References + helper videos on github actions, container etc.
- https://youtu.be/FYIRvqdP3pQ \
- https://youtu.be/09lZdSpeHAk \
