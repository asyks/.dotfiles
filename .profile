# (osx only) homebrew PATH stuff
PATH=/sbin:/usr/sbin:/usr/local/bin:/usr/local/sbin
PATH=/usr/local/share/python:${PATH}
PATH=/usr/local/Cellar/python/2.7.5/bin:${PATH}
PATH=/bin:/usr/bin:/usr/local/bin:${PATH}
export PATH

# (osx only, airship only) project paths
export UA_REPOS_PATH=/Users/aaronsykes/ua/
export AIRSHIP_PATH=/Users/aaronsykes/ua/airship
export CHEF_PATH=/Users/aaronsykes/ua/chef_configs
export GREYHOUND_PATH=/Users/aaronsykes/ua/greyhound
export TAXICAB_PATH=/Users/aaronsykes/ua/taxicab

# greyhound configuration vars
DEFAULT_AWS_PROFILE='greyhound'
export AWS_PROFILE=$DEFAULT_AWS_PROFILE
export AWS_DEFAULT_REGION='us-west-2'
export AWS_DEFAULT_OUTPUT='json'

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
