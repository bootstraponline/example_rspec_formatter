require 'rspec/core/formatters/progress_formatter'

class SauceProgressFormatter < RSpec::Core::Formatters::ProgressFormatter
  RSpec::Core::Formatters.register self, :example_failed, :dump_failures, :dump_summary

  # Invoked when an example fails.
  #
  # @param failed_example_notification [RSpec::Core::Notifications::FailedExampleNotification]
  # containing example subclass of `RSpec::Core::Example`
  def example_failed(failed_example_notification)
    # responsible for printing an 'F' to stdout
    super
  end

  # Dumps detailed information about each example failure.
  #
  # @param examples_notification [RSpec::Core::Notifications::ExamplesNotification]
  def dump_failures(examples_notification)
    # responsible for 'Failures:' detailed info
    super
  end

  # This method is invoked after the dumping of examples and failures.
  # Each parameter is assigned to a corresponding attribute.
  #
  # @param summary [SummaryNotification] containing duration,
  #   example_count, failure_count and pending_count
  def dump_summary(summary)
    # responsible for 'Failed examples:' summary
    super
  end
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

SauceOnDemandSessionID=11111122222233334444 job-name=Sign in page loads successfully
  loads successfully

=end
