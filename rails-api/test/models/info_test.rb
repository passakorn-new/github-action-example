# frozen_string_literal: true

require 'test_helper'

class InfoTest < ActiveSupport::TestCase
  test 'key and value are required' do
    refute Info.new(key: nil, value: 'test').valid?
    refute Info.new(key: 'test', value: nil).valid?
    refute Info.new(key: nil, value: nil).valid?
    assert Info.new(key: 'k', value: 'v').valid?
  end
end
