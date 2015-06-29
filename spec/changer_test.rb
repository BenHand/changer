require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/changer'

class ChangerTest < MiniTest::Test

  def test_changer_exists
    assert(Changer)
  end

  def test_run_works
    assert_respond_to(Changer, :run)
  end

  def test_run_returns_quarter
    assert_equal([25], Changer.run(25))
  end

  def test_run_returns_dime
    assert_equal([10], Changer.run(10))
  end

  def test_run_returns_nickel
    assert_equal([5], Changer.run(5))
  end

  def test_run_return_penny
    assert_equal([1], Changer.run(1))
  end

  def test_run_75_returns_3_quarters
    assert_equal([25, 25, 25], Changer.run(75))
  end

  def test_run_20_return_2_dimes
    assert_equal([10,10],Changer.run(20))
  end

  def test_run_5_returns_1_nickel
    assert_equal([5], Changer.run(5))
  end

  def test_run_4_return_4_pennies
    assert_equal([1,1,1,1],Changer.run(4))
  end

  def test_run_27_returns_coins
    assert_equal([25, 1, 1], Changer.run(27))
  end

  def test_run_66_return_coins
    assert_equal([25,25,10,5,1], Changer.run(66))
  end

  def test_run_93_return_coins
    assert_equal([25,25,25,10,5,1,1,1], Changer.run(93))
  end
end
