# pre-commit-circleci

pre-commit-circleci is a [pre-commit](https://github.com/pre-commit/pre-commit) component, which wraps [circleci](https://github.com/circleci/local-cli) to check CircleCI config yaml files.

Table of Contents
-----------------

  * [Requirements](#requirements)
  * [Install](#install)
  * [Contributing](#contributing)
  * [License](#license)
  * [Author](#author)

Requirements
------------
  pre-commit-circleci requires the following to run:

  * [pre-commit](http://pre-commit.com)
  * [circleci local-cli](https://github.com/circleci/local-cli)
  * [docker](https://www.docker.com/) is a prerequisite for circleci local-cli


Install
---------

1. create .pre-commit-config.yaml in you git project
2. pre-commit install
3. enjoy it

example .pre-commit-config.yaml as following:

```yaml
-   repo: http://github.com/danielhoherd/pre-commit-circleci
    rev: v0.0.1
    hooks:
    - id: circleci-validate
```

Contributing
------------

To contribute to pre-commit-circleci, clone this repo locally and commit your code on a separate branch.


Author
------

> GitHub [@danielhoherd](https://github.com/danielhoherd)
> GitHub [@detailyang](https://github.com/detailyang) - [pre-commit shell-lint](https://github.com/detailyang/pre-commit-shell) was used as a template for pre-commit circleci-validate.


License
-------

pre-commit-circleci is licensed under the [MIT](https://github.com/danielhoherd/pre-commit-circleci/blob/master/LICENSE) license.  
