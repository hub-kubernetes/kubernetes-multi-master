curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

add-apt-repository \
"deb https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
$(lsb_release -cs) \
stable"

apt-get update

 apt-get install -y docker-ce=$(apt-cache madison docker-ce | grep 17.03 | head -1 | awk '{print $3}')

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -

echo "deb http://apt.kubernetes.io kubernetes-xenial main" >> /etc/apt/sources.list.d/kubernetes.list

apt-get update

apt-get -y  install kubelet kubeadm kubectl

swapoff -a

sed -i '/ swap / s/^/#/' /etc/fstab
