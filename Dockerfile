ARG IMAGE=ubuntu:20.04
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
	--no-install-recommends --no-install-recommends \
  gcc \
  g++ \
  g++-9 \
  autoconf \
  automake \
  cmake \
  build-essential \
  libtool \
  flex \
  bison \
  gcc-doc \
  libc6-dev \
  libc-dev \
  gfortran \
  gettext \
  libglib2.0-dev \
  libgtk3-perl \
  libgfs-dev \
  libpng-dev \
  libxslt1-dev \
  liblapack-dev \
  libfftw3-dev \
  libreadline-dev \
  zlib1g-dev \
  libbz2-dev \
  libxml2-dev \
  libgmp-dev \
  libcurl4-gnutls-dev \
  libmpfr-dev \
  git \
  gnuplot \
  imagemagick \
  libjson-glib-1.0-0 \
  libjson-glib-dev \
  openmpi-bin \
  openmpi-common \
  libopenmpi-dev \
  nano \
  ca-certificates \
  libgtk-3-dev \
  libgtksourceview-3.0-dev \
  libgsf-1-dev

# Use RUN instructions to build your image by adding layers on top of initial image
RUN mkdir -p git \
  && git clone git://git.code.sf.net/p/gretl/git ./git/gretl-git \
  && export MPILINK="-L/usr/lib/x86_64-linux-gnu/openmpi/lib -lmpi" \
  && sh compile-gretl.sh

# Get rid of unnecessary libs which are only needed for compilation
RUN apt-get purge -yq \
  build-essential \
  autoconf \
  automake \
  cmake \
  gcc \
  g++ \
  g++-9 \
  libgtk3-perl \
  libgtk-3-dev \
  libgtksourceview-3.0-dev \
  && rm -rf /var/lib/apt/lists/* \
  && apt-get -y autoremove

RUN gretlcli --version
