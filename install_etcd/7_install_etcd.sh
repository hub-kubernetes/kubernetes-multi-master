mkdir /etc/etcd /var/lib/etcd
mv ~/ca.pem ~/kubernetes.pem ~/kubernetes-key.pem /etc/etcd
wget https://github.com/coreos/etcd/releases/download/v3.3.9/etcd-v3.3.9-linux-amd64.tar.gz
tar xvzf etcd-v3.3.9-linux-amd64.tar.gz
mv etcd-v3.3.9-linux-amd64/etcd* /usr/local/bin/


