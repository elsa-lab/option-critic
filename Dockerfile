FROM nvidia/cuda:10.0-cudnn7-devel

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
python-pip python-dev python-opencv python-tk python-numpy \
git zip libopenblas-dev cmake zlib1g-dev python3-pip python3.7-dev unrar curl

RUN git clone https://github.com/openai/atari-py /opt/atari-py \
&& cd /opt/atari-py \
&& curl -sSLO http://www.atarimania.com/roms/Roms.rar \
&& unrar x Roms.rar \
&& python3.7 -m pip install -e . \
&& python3.7 -m atari_py.import_roms /opt/atari-py

RUN git clone https://github.com/elsa-lab/option_critic.git /opt/option_critic \
&& cd /opt/option_critic \
&& bash option_critic/scripts/setup/install.sh

RUN pip install theano==1.0.4 cython mako

RUN git clone https://github.com/Theano/libgpuarray.git /opt/libgpuarray \
&& cd /opt/libgpuarray \
&& git checkout v0.7.6 \
&& mkdir Build \
&& cd Build \
&& cmake .. \
&& make install \
&& cd .. \
&& python setup.py build \
&& python setup.py install

RUN sed -i s/gpu/cuda/ /opt/option_critic/option_critic/scripts/train/_common/init_training_environment.sh 

RUN mv /opt/atari-py/atari_py/atari_roms /opt/option_critic/roms \
&& rm -r /opt/atari-py

RUN apt-get purge -y git python3-pip python3.7-dev unrar curl \
&& apt-get autoremove --purge -y \
&& apt-get clean

WORKDIR /opt/option_critic

