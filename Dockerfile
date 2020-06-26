FROM centos:7

# kubectl
ENV KUBECTL_VERSION 1.18.4
RUN curl -LO  http://mirror.azure.cn/kubernetes/kubectl/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl && \
  mv kubectl /usr/local/bin/kubectl && \
  chmod +x /usr/local/bin/kubectl

# glooctl
ENV GLOO_VERSION 1.4.1
RUN cd /usr/local && \
    curl -LO https://github.com/solo-io/gloo/releases/download/v${GLOO_VERSION}/glooctl-linux-amd64 && \
    mv glooctl-linux-amd64 /usr/local/bin/glooctl && \
    chmod +x /usr/local/bin/glooctl
