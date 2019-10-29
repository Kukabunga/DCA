#!/bash/sh

apt-get update && \

apt-get -y install \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg-agent \
  software-properties-common && \
  
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - && \

add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) \
  stable" && \
  
apt-get update && sudo apt-get install -y docker-ce=5:18.09.5~3-0~ubuntu-bionic docker-ce-cli=5:18.09.5~3-0~ubuntu-bionic containerd.io && \
  
echo docker version
