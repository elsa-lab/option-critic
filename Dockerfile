FROM nvidia/cuda:8.0-cudnn5-devel

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
python-pip python-dev python-opencv python-tk python-numpy \
zip libopenblas-dev cmake zlib1g-dev

RUN git clone https://github.com/elsa-lab/option_critic.git /opt/option_critic \
&& cd /opt/option_critic \
&& bash option_critic/scripts/setup/install.sh

WORKDIR /opt/option_critic

