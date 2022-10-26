# airship prod-eng project paths
export UA_REPOS_PATH=$HOME/ua/
export REPOS_DIR=$UA_REPOS_PATH
export AIRSHIP_PATH=$HOME/ua/airship
export CHEF_PATH=$HOME/ua/chef_configs

# airship bizsys project paths
export BIZSYS_ANSIBLE_PATH=$HOME/ua/bizsys-ansible-playbooks
export BIZSYS_AWS_TOOLS_PATH=$HOME/ua/bizsys-aws-tools
export BIZSYS_INFRASTRUCTURE_PATH=$HOME/ua/bizsys-aws-infrastructure
export GREYHOUND_PATH=$HOME/ua/greyhound
export TAXICAB_PATH=$HOME/ua/taxicab

# airship bizsys aws config
export AWS_PROFILE='default'
export AWS_DEFAULT_REGION='us-west-2'
export AWS_DEFAULT_OUTPUT='json'
export ANSIBLE_HOST_KEY_CHECKING=False

# airship artifactory
export ARTIFACTORY_USER='aaron.sykes'
export ARTIFACTORY_USERNAME=$ARTIFACTORY_USER  # ensures both web and java tooling get along
export PIP_INDEX_URL=https://$ARTIFACTORY_USER:$ARTIFACTORY_API_KEY@urbanairship.jfrog.io/urbanairship/api/pypi/pypi/simple

# aliases for GCP GKE
alias k='kubectl'
alias kstag='k --context=gke_ua-ops-transitional-stag_us-east1_airship-gke-1 --namespace=web'
alias kprod='k --context=gke_ua-ops-transitional-prod_us-east1_airship-gke-1 --namespace=web'
alias keucs='k --context=gke_ua-ops-transitional-eucs_europe-west1_airship-gke-1 --namespace=web'

# aliases for webenv
alias airship-test-run='docker-compose run --rm --publish 5678:5678 airship pytest --disable-pytest-warnings --enable-debugger'

# airship docker-compose timeout (for webpack)
export COMPOSE_HTTP_TIMEOUT=500

# gke auth plugin setting
export USE_GKE_GCLOUD_AUTH_PLUGIN=False
