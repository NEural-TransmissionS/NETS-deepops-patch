#!/bin/bash
# find deepops directory using find
DEEPOPS_DIR=$(find ~ -type d -name "deepops" -print -quit)
# patch files in deepops/config
patch -i group_vars_all_diff $DEEPOPS_DIR/config/group_vars/all.yml
patch -i group_vars_k8s_diff $DEEPOPS_DIR/config/group_vars/k8s-cluster.yml