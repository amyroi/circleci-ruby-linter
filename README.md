# circleci-ruby-linter

CircleCI orb providing jobs for common Ruby and front-end linters.

## Overview

This repository contains the source for the [amyroi/ruby-linter](https://circleci.com/orbs/registry/orb/amyroi/ruby-linter) orb. The orb bundles commands for:

- brakeman
- eslint
- haml-lint
- rails_best_practices
- reek
- rubocop
- stylelint

## Usage

Add the orb to your CircleCI configuration:

```yaml
version: 2.1

orbs:
  ruby-linter: amyroi/ruby-linter@<version>

workflows:
  lint:
    jobs:
      - ruby-linter/rubocop
      - ruby-linter/brakeman
```

Replace `<version>` with the desired orb release. See [examples/](examples/) for sample configurations for each linter.

## Development

After modifying any orb source files, regenerate the compiled CircleCI configuration:

```bash
./regenerate_config.sh
```

The script uses `circleci config pack` to build `.circleci/config.yml` from the orb source.

