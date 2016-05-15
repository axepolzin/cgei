require 'test_helper'

class LotTest < ActiveSupport::TestCase
  validates :pin, :presence => true, :uniqueness => true
  # test "the truth" do
  #   assert true
  # end
end
