# (osx only) homebrew PATH stuff
PATH=/sbin:/usr/sbin:/usr/local/bin:/usr/local/sbin
PATH=/usr/local/share/python:${PATH}
PATH=/usr/local/bin:/bin:/usr/bin:${PATH}
export PATH

# (osx only) python Path stuff
export PYTHONPATH=/usr/local/lib/python

# urban airship prod-eng project paths
export UA_REPOS_PATH=$HOME/ua/
export AIRSHIP_PATH=$HOME/ua/airship
export CHEF_PATH=$HOME/ua/chef_configs

# urban airship bizsys project paths
export BIZSYS_ANSIBLE_PATH=$HOME/ua/bizsys-ansible-playbooks
export BIZSYS_AWS_TOOLS_PATH=$HOME/ua/bizsys-aws-tools
export BIZSYS_INFRASTRUCTURE_PATH=$HOME/ua/bizsys-aws-infrastructure
export GREYHOUND_PATH=$HOME/ua/greyhound
export TAXICAB_PATH=$HOME/ua/taxicab

# urban airship bizsys aws config
export AWS_PROFILE='default'
export AWS_DEFAULT_REGION='us-west-2'
export AWS_DEFAULT_OUTPUT='json'
export ANSIBLE_HOST_KEY_CHECKING=False

# Airship Artifactory
export ARTIFACTORY_USER='aaron.sykes'
export ARTIFACTORY_USERNAME=$ARTIFACTORY_USER  # ensures both web and java tooling get along
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
alias kstag='k --context=gke_ua-ops-transitional-stag_us-east1_airship-gke-1 --namespace=web'
alias kprod='k --context=gke_ua-ops-transitional-prod_us-east1_airship-gke-1 --namespace=web'

# env vars for airship-admin
export REPOS_DIR=$UA_REPOS_PATH

# VSCodeVim key-repeating stuff
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
