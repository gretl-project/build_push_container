ARG IMAGE
ARG VERSION="0.1"
ARG MAINTAINER="Gretl Team"
ARG GRETL_VERSION="latest"

FROM ${IMAGE}

# copy shell script with commands for compilation
COPY ./src/compile-gretl.sh .

LABEL maintainer=${MAINTAINER}
LABEL version=${VERSION}
LABEL description="Docker image based on $IMAGE with compiled Gretl version $GRETL_VERSION. Extra tools installed: git, nano."

# Disable Prompt During Packages Installation
ARG DEBIAN_FRONTEND=noninteractive

ENV TZ=Europe/Berlin

# Use RUN instructions to build your image by adding layers on top of initial image
RUN apt-get update -qq && apt-get install -yq \
	--no-install-recommends --no-install-recommends 
