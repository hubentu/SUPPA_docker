FROM continuumio/miniconda3

RUN conda config --add channels conda-forge
RUN conda config --add channels bioconda

RUN pip install SUPPA==2.3

WORKDIR /opt
RUN wget https://github.com/comprna/SUPPA/archive/v2.3.tar.gz && tar xvf v2.3.tar.gz
