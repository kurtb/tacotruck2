FROM pytorch/pytorch:1.5-cuda10.1-cudnn7-devel
ENV PATH /usr/local/cuda/bin:${PATH}

RUN apt-get update -y
RUN apt-get install -y libfreetype6-dev libxft-dev

RUN pip install numpy scipy matplotlib librosa==0.6.0 tensorflow==1.15.2 tensorboardX inflect==0.2.5 Unidecode==1.0.22 pillow jupyter

COPY . /workspace

WORKDIR /workspace/apex/
RUN pip install -v --no-cache-dir --global-option="--cpp_ext" --global-option="--cuda_ext" .

WORKDIR /workspace/tacotron2/
RUN pip install -r requirements.txt

COPY tacotron2_statedict.pt tacotron2_statedict.pt
COPY waveglow_256channels_universal_v5.pt waveglow_256channels.pt