require 'test_helper'

class MealTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @meal = Meal.create(name:"blablablabla", description: "blablablablablalblaa", price: 10.0)
  end
  test "Name should be present" do
    @meal.name = nil
    assert_not @meal.valid?
  end
  
end
