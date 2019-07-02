org=$1

if [ -z $org ]; then
  echo "Org not provided";
  exit
fi

repos=`ls -1 repos/$org`

for repo in $repos; do
  pushd repos/$org/$repo
  git pull
  popd
done