FROM continuumio/miniconda3

RUN conda config --add channels conda-forge
RUN conda config --add channels bioconda

RUN conda install git
RUN pip install SUPPA==2.3

WORKDIR /opt
RUN git clone https://github.com/comprna/SUPPA.git
