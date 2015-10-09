# example_rspec_formatter

Simple example of a custom RSpec formatter.

The formatter performs the same as ProgressFormatter so the only
use is as an example.

Originally the intended purpose was to insert Sauce specific data into
reports however modifying `example.metadata[:full_description]` directly
made a custom formatter unnecessary.

#### credits

- Documentation is copied from RSpec core
- The test case (formatter_spec) is copied from [grosser/rspec-instafail](https://github.com/grosser/rspec-instafail)
