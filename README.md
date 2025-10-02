# circleci-ruby-linter
CircleCI orb for Ruby Linter

https://circleci.com/orbs/registry/orb/amyroi/ruby-linter#orb-source

## Requirements

The Rubocop command emits a JUnit report using `--format junit`. Ensure your
project includes a formatter that provides this output, such as the
[`rubocop-junit-formatter`](https://github.com/sj26/rubocop-junit-formatter)
gem, and require it (for example with `--require rubocop/formatter/junit_formatter`)
before invoking the command. Without a JUnit formatter available, Rubocop will
fail with an "unrecognized formatter junit" error.