FROM pytorch/conda-builder:cuda11.7
RUN conda install pytorch==2.0.1 torchvision==0.15.2 torchaudio==2.0.2 pytorch-cuda=11.7 -c pytorch -c nvidia -y
RUN pip install -U openmim
RUN mim install mmengine
RUN mim install "mmcv>=2.0.0"
RUN pip install "mmsegmentation>=1.0.0"
RUN pip install "mmdet>=3.0.0"
RUN pip install xformers=='0.0.20'
RUN pip install future tensorboard
RUN pip install ftfy
RUN pip install regex
RUN pip install timm
RUN pip install einops
