require 'test_helper'

class EmailTest < ActiveSupport::TestCase
  test "email should not save without text" do
    email = Email.new
    assert_not email.save
  end
end
