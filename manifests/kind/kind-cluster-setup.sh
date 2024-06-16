kind create cluster --config=- <<EOF
kind: Cluster
apiVersion: kind.x-k8s.io/v1alpha4
name: ambient
nodes:
- role: control-plane
- role: worker
- role: worker
networking:
  # the default CNI will not be installed
 disableDefaultCNI: true
 podSubnet: 192.168.0.0/16 # set to Calico's default subnet
EOF