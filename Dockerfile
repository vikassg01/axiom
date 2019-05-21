FROM centos:7

LABEL maintainer="Senthilkumar.Seetharaman@team.telstra.com"

RUN mkdir /kube
COPY *.repo /etc/yum.repos.d/
RUN yum install --downloadonly --downloaddir=/kube kubeadm kubelet kubectl kubernetes-cni
RUN tar -zcvf kube.tar.gz /kube/
COPY /kube/kube.tar.gz .