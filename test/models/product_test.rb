require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @product = Product.new(name: "Banana cake", description: "Jest bardzo smaczny, pyszny", price: 100.00)
   
  end
  test "recipe should be valid" do
    assert @product.valid?
  end
  test "name should be present" do
    @product.name = ""
    assert_not @product.valid?
  end
  test "name length should'nt  be too long" do
    @product.name = "a" * 101
    assert_not @product.valid?
  end
  test "name's length should'nt be too short " do
    @product.name = "aaaa"
    assert_not @product.valid?
  end
  test "price must be present" do
    @product.price = ""
    assert_not @product.valid?
  end

  test "description must be present" do 
    @product.description = ""
    assert_not @product.valid?
  end
  
  test "description shouldn't be too long" do
    @product.description = "a"*501
    assert_not @product.valid?
  end
  test "description should'nt be too short" do
    @product.description = "a" * 19
    assert_not @product.valid?
  end
end
