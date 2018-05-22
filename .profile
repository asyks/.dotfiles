# (osx only) homebrew PATH stuff
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/share/python:$PATH
export PATH=/usr/local/Cellar/python/2.7.5/bin:$PATH

# (osx only, airship only) project paths
export UA_REPOS_PATH=/Users/aaronsykes/ua/
export AIRSHIP_PATH=/Users/aaronsykes/ua/airship
export CHEF_PATH=/Users/aaronsykes/ua/chef_configs
export GREYHOUND_PATH=/Users/aaronsykes/ua/greyhound
export TAXICAB_PATH=/Users/aaronsykes/ua/taxicab

# greyhound configuration vars
export BOTO_CONFIG=$GREYHOUND_PATH/ansible/.boto
export AWS_REGION='us-west-2'

# Airship Artifactory
export ARTIFACTORY_USERNAME='aaron.sykes'
export ARTIFACTORY_API_KEY=''

# (osx only) Java
export JAVA_HOME=$(/usr/libexec/java_home)

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/aaronsykes/Downloads/google-cloud-sdk/path.zsh.inc' ];
then source '/Users/aaronsykes/Downloads/google-cloud-sdk/path.zsh.inc';
fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/aaronsykes/Downloads/google-cloud-sdk/completion.zsh.inc' ];
then source '/Users/aaronsykes/Downloads/google-cloud-sdk/completion.zsh.inc';
fi
