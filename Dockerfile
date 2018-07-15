FROM centos
WORKDIR /root
ADD ./lib /root/lib
ADD .bashrc /root
ENV TLPI_PATH /root/lib/tlpi-dist
RUN buildDeps='gcc gcc-c++ make git vim' \
    && yum update -y \
    && yum install ${buildDeps} -y 