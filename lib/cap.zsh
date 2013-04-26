# Functions

function stage {
  branch=`git branch | awk '/\*/ {print $2}'`
  server=$1
  if [ -e $server ]; then
    server=1
  fi
  echo "Deploying branch $branch to staging$server"
  echo "BRANCH=$branch cap staging deploy:migrations"
  BRANCH=$branch cap staging deploy:migrations
}

function unstage {
  server=$1
  if [ -e $server ]; then
    server=1
  fi
  echo "Undeploying staging server $server"
  echo "cap staging undeploy -s staging_server=$server"
  cap staging undeploy -s staging_server=$server
}
