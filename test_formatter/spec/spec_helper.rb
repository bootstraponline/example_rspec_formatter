require_relative '../../lib/sauce_rspec_formatter'

RSpec.configure do |config|
  config.formatter = SauceProgressFormatter

  def exclude_pattern regex_string
    /^#{Regexp.escape regex_string}/
  end

  user                                = ENV['USER']
  osx_rvm_gems                        = exclude_pattern "/Users/#{user}/.rvm/gems/"
  linux_rvm_gems                      = exclude_pattern "/home/#{user}/.rvm/gems/"
  config.backtrace_exclusion_patterns = [osx_rvm_gems, linux_rvm_gems]
end
