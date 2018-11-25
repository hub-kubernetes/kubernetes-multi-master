cfssl gencert \
-ca=ca.pem \
-ca-key=./ca-key.pem \
-config=./ca-config.json \
-hostname=10.142.0.2,10.142.0.3,10.142.0.4,127.0.0.1,kubernetes.default \
-profile=kubernetes ./kubernetes-csr.json | \
cfssljson -bare kubernetes
