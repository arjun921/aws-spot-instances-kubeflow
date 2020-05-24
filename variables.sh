# Set the following kfctl configuration file:

## Environment specific values.
export CONFIG_URI="https://raw.githubusercontent.com/kubeflow/manifests/v1.0.1/kfdef/kfctl_aws_cognito.v1.0.1.yaml"

# Set KF_NAME to the name of your Kubeflow deployment. You also use this
# value as directory name when creating your configuration directory.
# For example, your deployment name can be 'my-kubeflow' or 'kf-test'.
# This name should match the kubeflow cluster name that can be found under envs/$ENVIRONMENT/cluster-spec.yml > metadata.name
# If the name doesn't match, you will face issues with issuing an ELB.
export KF_NAME=kubeflow-us-east-1

# Set the path to the base directory where you want to store one or more 
# Kubeflow deployments. For example, /opt.
# Then set the Kubeflow application directory for this deployment.
export BASE_DIR=envs/staging
export KF_DIR=${BASE_DIR}/${KF_NAME}
