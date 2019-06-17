FROM centos
WORKDIR /root
ADD ./lib /root/lib
ADD .bashrc /root
ADD requirements.txt /root
ENV TLPI_PATH /root/lib/tlpi-dist
RUN buildDeps='gcc gcc-c++ make git vim' \
    && yum update -y \
    && yum install ${buildDeps} -y \
    && yum install -y https://centos7.iuscommunity.org/ius-release.rpm \
    && yum update \
    && yum install -y python36u python36u-libs python36u-devel python36u-pip \
    && pip3.6 install -r requirements.txt -i https://pypi.doubanio.com/simple/  --trusted-host pypi.doubanio.com
