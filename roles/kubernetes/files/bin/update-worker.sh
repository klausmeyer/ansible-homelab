#!/bin/bash -l

set -e

version="1.34.2"

apt-mark unhold kubeadm
apt-get update
apt-get install -y kubeadm="${version}-*"
apt-mark hold kubeadm

kubeadm upgrade node

apt-mark unhold kubelet kubectl
apt-get update
apt-get install -y kubelet="${version}-*" kubectl="${version}-*"
apt-mark hold kubelet kubectl

systemctl daemon-reload
systemctl restart kubelet
