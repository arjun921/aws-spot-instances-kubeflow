## Environment specific values.
set -x
# when replicating, ensure to change the variable as needed. 
export ENVIRONMENT=staging

# kubectl
export KUBECONFIG="$(pwd)/envs/$ENVIRONMENT/.kubeconfig"

# Use binaries in .bin
export PATH="$(pwd)/.bin:$PATH"

set +x