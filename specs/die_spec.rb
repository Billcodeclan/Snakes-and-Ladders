require('minitest/autorun')
require('minitest/rg')
require_relative('../die')

class DieTest < MiniTest::Test

def setup

  @die = Die.new([1, 2, 3, 4, 5, 6])
  
end

  def test_roll

    expected_result = 1..6

    actual = @die.roll()

    included = expected_result.include?(actual)

    assert_equal(true, included)

  end

end
