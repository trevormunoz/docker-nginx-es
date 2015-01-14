FROM ubuntu:14.04
RUN apt-get update
RUN apt-get install wget -y

ENV CONDA_PKG_VERSION 3.7.0
ENV DW_PKG_VERSION 0.4.0

# Install Anaconda environment
RUN wget --quiet \
 http://repo.continuum.io/miniconda/Miniconda3-$CONDA_PKG_VERSION-Linux-x86_64.sh && \
 /bin/bash /Miniconda3-$CONDA_PKG_VERSION-Linux-x86_64.sh -b -p /usr/local/bin/anaconda && \
 /usr/local/bin/anaconda/bin/conda create -n dumbwaiter python=3.4 \
 pandas pip pytz --yes

# Install dumbwaiter
RUN wget --quiet \
 https://github.com/trevormunoz/dumbwaiter/archive/v$DW_PKG_VERSION.tar.gz && \
 tar xvf v$DW_PKG_VERSION.tar.gz -C / && \
 /usr/local/bin/anaconda/envs/dumbwaiter/bin/pip install -r \
 /dumbwaiter-$DW_PKG_VERSION/requirements.txt && \
 /usr/local/bin/anaconda/envs/dumbwaiter/bin/python \
 /dumbwaiter-$DW_PKG_VERSION/setup.py install && \
 mkdir -p /var/lib/dumbwaiter

COPY data/ /var/lib/dumbwaiter
COPY dw.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/dw.sh