FROM debian:buster-slim

ENV IBM_CLOUD_NATIVE=1.1.0
ENV DEBIAN_FRONTEND=noninteractive
ENV ISTIO_VERSION=1.0.2

# Update the OS
RUN apt-get update && apt-get install wget curl unzip nano -y

# IBMcloud CLI
WORKDIR "/root"
RUN curl -sL https://ibm.biz/idt-installer | bash

# Istio
WORKDIR "/root"
RUN wget https://github.com/istio/istio/releases/download/${ISTIO_VERSION}/istio-${ISTIO_VERSION}-linux.tar.gz && \
        tar -xvzf istio-${ISTIO_VERSION}-linux.tar.gz && \
        rm -rf istio-${ISTIO_VERSION}-linux.tar.gz

# Cleanup
WORKDIR "/root"
RUN  apt-get clean && \
        rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/log/*log /var/log/apt/* /var/lib/dpkg/*-old /var/cache/debconf/*-old
RUN echo 'export PS1="\[\e[34m\]IBM\[\e[m\]☁️  # "' > /root/.bashrc
RUN echo 'export PATH=$PATH:/root/bin:/root/helm-${HELM_VERSION}:/root/istio-${ISTIO_VERSION}/bin/' >> /root/.bashrc
RUN echo 'cat /etc/motd' >> /root/.bashrc
RUN echo '\
\n \
\n \
\n \
Thank you for using the IBM Cloud-Native Docker Container. \n \
\n \
\n \
\n \
You have the following tools at your disposal: \n \
  - git (git cli) \n \
  - helm (helm cli) \n \
  - ibmcloud (ibmcloud cli) \n \
  - ibmcloud cf (ibmcloud cloud foundry cli) \n \
  - istioctl (istio cli) \n \
  - kubectl (kubernetes cli) \n \
  - nano (if you need to edit any text) \n \
\n \
\n \
In your first login, we suggest you ibmcloud login to authenticate \n \
against the IBM cloud API.  \n \
' > /etc/motd

CMD ["/bin/bash"]
