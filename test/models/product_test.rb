require 'test_helper'

class ProductTest < ActiveSupport::TestCase
 
  def setup
    @product = Product.new(name: "Example product", price: "13", description: "this is a sample description")
  end

  test "should be valid" do
    assert @product.valid?
  end
 
   test "name should be present" do
      @product.name = ""
      assert_not @product.valid?
    end

  test "price should be present" do
      @product.price = ""
      assert_not @product.valid?
    end

  test "description should be present" do
      @product.description = ""
      assert_not @product.valid?
    end

  test "name should not be too long" do
    @product.name = "a" * 51
    assert_not @product.valid?
  end

  test "description should not be too long" do
    @product.description = "a" * 244 + "@example.com"
    assert_not @product.valid?
  end


end
