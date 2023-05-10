# Deploying clusters using NVIDIA DeepOps

This repo contains a patch to deploy clusters using NVIDIA DeepOps. 

Patch components:
- Fix issues where `cert-manager` and other services cannot reach other pods in the cluster via `*.svc` and `*.svc.cluster.local` addresses.
- Use Cloudflare and Google DNS
- DNS configuration specific to the NETS cluster

## Usage
1. Clone and install DeepOps
```sh
cd ~
git clone https://github.com/NVIDIA/deepops
cd deepops
./scripts/setup.sh
```
2. Clone this repo
```sh
cd ~
git clone https://github.com/NEural-TransmissionS/NETS-deepops-patch
cd NETS-deepops-patch
```
3. Apply the patch
```sh
./patch.sh
```
4. Modify the inventory file following step 4 of [NVIDIA Network Operator](https://github.com/NVIDIA/deepops/blob/master/docs/k8s-cluster/nvidia-network-operator.md#deployment-steps) or step 5 of [ROCE Perf K8s](https://github.com/NVIDIA/deepops/blob/master/docs/k8s-cluster/roce-perf-k8s.md#configuration-steps) guides. Note: your provisioning machine can also be a node in the cluster.
```sh
cd ~/deepops
nano config/inventory
```
5. Follow from step 4 of [Kubernetes Deployment Guide](https://github.com/NVIDIA/deepops/blob/master/docs/k8s-cluster/README.md#installation-steps) to deploy the cluster.