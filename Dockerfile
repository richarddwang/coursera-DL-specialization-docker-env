FROM conda/miniconda3

WORKDIR /dl-home

RUN pip install --quiet \
    keras==2.0.7 \
    tensorflow==1.2.1 \
    pydot==1.2.3

# opencv need libgtk-x11-2.0.so.0
RUN apt-get update \
    && apt-get install -y -qq libgtk2.0-0 \
    && rm -rf /var/lib/apt/lists/*

# install packages specified
COPY ./condaenv.txt /dl-home
RUN conda install --file condaenv.txt

# updating jupyter-related packages make it faster
RUN conda update jupyter jupyter_client jupyter_console jupyter_core jupyterhub jupyterlab

# there are some packages out of specs list (don't know why)
RUN conda install --yes \
    faker \
    tqdm \
    pydot \
    && conda install --yes -c menpo opencv3 \
    && conda install --yes -c conda-forge pydub \
    && conda install --yes -c iainsgillis music21
RUN pip install emoji

# start jupyter server
CMD /bin/bash -c "jupyter notebook --notebook-dir=/dl-home --ip='0.0.0.0' --port=8888 --allow-root --no-browser"
