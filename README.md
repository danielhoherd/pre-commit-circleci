[![GitHub License](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/circleci/local-cli/master/LICENSE)

# pre-commit-circleci

`pre-commit-circleci` is a
[pre-commit](https://github.com/pre-commit/pre-commit) component that checks
CircleCI configuration YAML files in Git repositories.  It wraps
[circleci-cli](https://github.com/CircleCI-Public/circleci-cli) in a hook that
pre-commit can use.


## Requirements

`pre-commit-circleci` requires the following to run:

* [pre-commit](http://pre-commit.com)
* [circleci-cli](https://github.com/CircleCI-Public/circleci-cli)


## Installation

1. [Install pre-commit](https://pre-commit.com/#install).
1. [Install circlei-cli](https://github.com/CircleCI-Public/circleci-cli).
1. Create a `.pre-commit-config.yaml` file in your repository.  Set up CircleCI
   validation as follows:
   ```yaml
   repos:
     - repo: http://github.com/KoBoldMetals/pre-commit-circleci
       rev: v0.0.4
       hooks:
       - id: circleci-validate
   ```
1. Run `pre-commit install` to install the hook.


## Contributing

To contribute to `pre-commit-circleci`, clone this repository locally and
commit your code on a separate branch, then submit a pull request.


## Authors

- GitHub [@mplough](https://github.com/mplough)
- GitHub [@danielhoherd](https://github.com/danielhoherd) - forked from his
  original [pre-commit-circle-ci](https://github.com/danielhoherd/pre-commit-circleci) tool.
- GitHub [@detailyang](https://github.com/detailyang) - [pre-commit
  shell-lint](https://github.com/detailyang/pre-commit-shell) was used as a
  template for the validation hook.


## License

pre-commit-circleci is licensed under the [MIT](https://github.com/KoBoldMetals/pre-commit-circleci/blob/master/LICENSE) license.
