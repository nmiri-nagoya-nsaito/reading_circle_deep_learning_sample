FROM microsoft/cntk:2.2-cpu-python3.5
MAINTAINER Naoki Saito <saito.naoki@nmiri.city.nagoya.jp>
#RUN apt-get update \
#    && DEBIAN_FRONTEND=noninteractive apt-get upgrade -y \
#    && DEBIAN_FRONTEND=noninteractive apt-get install tzdata -y
#RUN echo "Asia/Tokyo" > /etc/timezone && dpkg-reconfigure --frontend noninteractive tzdata
#RUN pip install jupyter
#ADD MNIST_Caffe.ipynb /workspace
#WORKDIR /workspace

#RUN git clone https://github.com/BVLC/caffe.git
#WORKDIR /workspace/caffe
#RUN data/mnist/get_mnist.sh
#RUN cp Makefile.config.example Makefile.config
#RUN echo "CPU_ONLY := 1" >> Makefile.config
#RUN echo "INCLUDE_DIRS += /usr/include/hdf5/serial/" >> Makefile.config
#RUN echo "LIBRARY_DIRS += /usr/lib/x86_64-linux-gnu/hdf5/serial/" >> Makefile.config
#RUN make
#RUN examples/mnist/create_mnist.sh
