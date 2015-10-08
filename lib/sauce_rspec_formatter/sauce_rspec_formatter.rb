require 'rspec/core/formatters/base_text_formatter'

class SauceRSpecFormatter < BaseTextFormatter
  RSpec::Core::Formatters.register self, :example_failed, :dump_failures
end

=begin
https://github.com/rspec/rspec-core/blob/7477810fc65718a69753f04d4a99c3acf2371acb/lib/rspec/core/formatters/protocol.rb
https://github.com/rspec/rspec-core/blob/7477810fc65718a69753f04d4a99c3acf2371acb/lib/rspec/core/formatters/progress_formatter.rb
https://github.com/saucelabs/sauce_ruby/blob/master/lib/sauce/rspec/rspec_formatter.rb

--

Dump example caps plus the sauce labs job link

example.cap

"https://saucelabs.com/beta/tests/#{example.session_id}"

--

# @method dump_failures
# @api public
# @group Suite Notifications
#
# Dumps detailed information about each example failure.
#
# @param notification [NullNotification]

# @method example_failed
# @api public
# @group Example Notifications
#
# Invoked when an example fails.
#
# @param notification [ExampleNotification] containing example subclass
#   of `RSpec::Core::Example`


SauceOnDemandSessionID=11111122222233334444 job-name=Sign in page loads successfully
  loads successfully

=end
