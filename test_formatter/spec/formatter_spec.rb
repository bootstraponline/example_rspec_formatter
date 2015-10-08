require_relative 'spec_helper'

# Copied from:
# https://github.com/grosser/rspec-instafail/blob/b29cc0d0f07b6d03e1a7d6322e464e7314e62b0a/spec/rspec_3/a_test.rb
# rubocop:disable all

describe 'x' do
  it 'fails logically' do
    expect(1).to eq 2
  end

  it 'b' do
  end

  it 'c' do
  end

  it 'pends' do
    pending
    raise
  end

  it 'raises a simple error' do
    raise 'shallow failure'
  end

  it 'raises a hidden error' do
    error = ExceptionWrappingException.new('There is an error in this error.')
    error.original_exception = RuntimeError.new('There is no error in this error.')
    raise error
  end

  it 'e' do
  end

  context "ancestors" do
    after do |example|
      puts "\nANCESTORS:#{example.example_group.ancestors.size}\n"
    end

    it "does not add ancestors on failure" do
      raise "BAM"
    end

    it "does not add ancestors on failure" do
    end
  end
end

class ExceptionWrappingException < RuntimeError
  attr_accessor :original_exception
end
