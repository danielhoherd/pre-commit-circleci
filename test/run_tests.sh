#! /bin/bash

set -x

command -v circleci &> /dev/null || {
  echo "are you sure you have installed circleci?"
  exit 1
}

# Because of some docker limitations we can't use mktemp
tempdir="${HOME}/temp/circleci-validate-$(date +%s)"
mkdir -p "${tempdir}" || exit 1
cp -r . "${tempdir}"
cd "${tempdir}" || exit 1

cat << EOS > .pre-commit-config.yaml
repos:
  - repo: $(pwd)
    rev: $(git rev-parse HEAD)
    hooks:
      - id: circleci-validate
EOS

git add .
git commit -m "Test commit"

[ -d .circleci ] && rm -rf .circleci
mkdir -p .circleci

pwd

while read -r file ; do
  echo "----------------------------------------"
  echo "Test file: $file"
  cp "$file" .circleci/config.yml
  git add .circleci/config.yml
  pre-commit run --all-files
  ret=$?
  echo "Return for $file is: $ret"
  [ "$ret" != "0" ] || exit 255
  rm -f .circleci/config.yml
done < <( find "test" -name 'example-bad-*' )

while read -r file ; do
  echo "----------------------------------------"
  echo "Test file: $file"
  cp "$file" .circleci/config.yml
  git add .circleci/config.yml
  pre-commit run --all-files
  ret=$?
  echo "Return for $file is: $ret"
  [ "$ret" == "0" ] || exit 255
  rm -f .circleci/config.yml
done < <( find "test" -name 'example-good-*' )

echo "----------------------------------------"
echo "All tests passed" 1>&2
rm -rf "${tempdir}"
