require 'rspec/core/formatters/progress_formatter'

class SauceProgressFormatter < RSpec::Core::Formatters::ProgressFormatter
  RSpec::Core::Formatters.register self, :example_failed

  # Invoked when an example fails.
  #
  # @param failed_example_notification [RSpec::Core::Notifications::FailedExampleNotification]
  # containing example subclass of `RSpec::Core::Example`
  def example_failed(failed_example_notification)
     # todo: Dump example caps plus the sauce labs job link
     # example.cap
     # "https://saucelabs.com/beta/tests/#{example.session_id}"

     failed_example_notification.example.metadata[:full_description] += ' - added description 2!'

    # prints an 'F' to stdout
    super
  end
end

=begin
https://github.com/rspec/rspec-core/blob/7477810fc65718a69753f04d4a99c3acf2371acb/lib/rspec/core/formatters/protocol.rb
https://github.com/rspec/rspec-core/blob/7477810fc65718a69753f04d4a99c3acf2371acb/lib/rspec/core/formatters/progress_formatter.rb
https://github.com/saucelabs/sauce_ruby/blob/master/lib/sauce/rspec/rspec_formatter.rb
=end
