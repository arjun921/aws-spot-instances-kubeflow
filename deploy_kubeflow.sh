#!/bin/bash

source variables.sh
mkdir -p ${KF_DIR}

# Download the config file and change the default login credentials.
# wget -O ${KF_DIR}kfctl_istio.yaml $CONFIG_URI
export CONFIG_FILE=${KF_DIR}/kfctl_istio.yaml

# Credentials for the default user are admin@kubeflow.org:12341234
# To change them, please edit the dex-auth application parameters
# inside the KfDef file.
vim $CONFIG_FILE

kfctl apply -V -f ${CONFIG_FILE}
