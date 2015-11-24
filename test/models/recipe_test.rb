require 'test_helper'
class RecipeTest < ActiveSupport::TestCase
  def setup
    @recipe = Recipe.new(name: "Bimbokojestspoko", summary: "What is love? Baby dont hurt me, no more",
    description: "Wzlallaz"
  end
  test "recipe should be valid" do
    assert @recipe.valid?
  end
  test "name should be present" do
    @recipe.name = ""
    assert_not @recipe.valid?
  end
  test "name length should'nt  be too long" do
    @recipe.name = "a" * 101
    assert_not @recipe.valid?
  end
  test "name's length should'nt be too short " do
    @recipe.name = "aaaa"
    assert_not @recipe.valid?
  end
  test "summary must be present" do
    @recipe.summary = ""
    assert_not @recipe.valid?
  end
  test "summary's length should not be too long" do
    @recipe.summary = "a" * 151
    assert_not @recipe.valid?
  end
  test "summary's length should not be too short" do
    @recipe.summary = "a" * 9
    assert_not @recipe.valid?
  end
  test "description must be present" do 
    @recipe.description = ""
    assert_not @recipe.valid?
  end
  
  test "description shouldn't be too long" do
    @recipe.description = "a"*501
    assert_not @recipe.valid?
  end
  test "description should'nt be too short" do
    @recipe.description = "a" * 19
    assert_not @recipe.valid?
  end
  
  
end