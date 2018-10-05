# (osx only) homebrew PATH stuff
PATH=/sbin:/usr/sbin:/usr/local/bin:/usr/local/sbin
PATH=/usr/local/share/python:${PATH}
PATH=/usr/local/bin:/bin:/usr/bin:${PATH}
export PATH

# (osx only) python Path stuff
export PYTHONPATH=/usr/local/lib/python

# (osx only, airship only) project paths
export UA_REPOS_PATH=$HOME/ua/
export AIRSHIP_PATH=$HOME/ua/airship
export CHEF_PATH=$HOME/ua/chef_configs
export BIZSYS_ANSIBLE_PATH=$HOME/ua/bizsys-ansible-playbooks
export BIZSYS_AWS_TOOLS_PATH=$HOME/ua/bizsys-aws-tools
export BIZSYS_INFRASTRUCTURE_PATH=$HOME/ua/bizsys-aws-infrastructure
export GREYHOUND_PATH=$HOME/ua/greyhound
export TAXICAB_PATH=$HOME/ua/taxicab

# greyhound configuration vars
DEFAULT_AWS_PROFILE='greyhound'
export AWS_PROFILE=$DEFAULT_AWS_PROFILE
export AWS_DEFAULT_REGION='us-west-2'
export AWS_DEFAULT_OUTPUT='json'

# Airship Artifactory
export ARTIFACTORY_USER='aaron.sykes'
export ARTIFACTORY_USERNAME=$ARTIFACTORY_USER  # ensures both web and java tooling get along
export ARTIFACTORY_API_KEY=''
export PIP_INDEX_URL=https://$ARTIFACTORY_USER:$ARTIFACTORY_API_KEY@urbanairship.jfrog.io/urbanairship/api/pypi/pypi/simple

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/aaron.sykes/Downloads/google-cloud-sdk/path.zsh.inc' ];
then source '/Users/aaron.sykes/Downloads/google-cloud-sdk/path.zsh.inc';
fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/aaron.sykes/Downloads/google-cloud-sdk/completion.zsh.inc' ];
then source '/Users/aaron.sykes/Downloads/google-cloud-sdk/completion.zsh.inc';
fi

# env vars for GCP GKE
alias k='kubectl'
alias kstag='k --context=gke_ua-ops-transitional-stag_us-east1-b_gke-1-common-cluster-us-east1 --namespace=web'
alias kprod='k --context=gke_ua-ops-transitional-prod_us-east1-b_gke-1-common-cluster-us-east1 --namespace=web'
