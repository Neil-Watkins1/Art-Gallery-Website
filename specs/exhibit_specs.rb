require 'minitest/autorun'
require 'minitest/rg'
require_relative '../models/exhibit'


class TestExhibit < Minitest::Test

  def setup

  end

  def test_add_exhibit

    assert_equal("", ())
  end


  # def setup
  #     @pet1 = Pet.new("Sir Percy", :cat, "British Shorthair", 500)
  #     @pet2 = Pet.new("Mr Wiggles", :cat, "British Shorthair", 750)
  #
  #     @pet_shop = PetShop.new("Camelot Of Pets", 1000)
  #   end
  #
  #   def test_petshop_has_name
  #     assert_equal("Camelot Of Pets", @pet_shop.name)
  #   end
  #   def test_petshop_has_cash
  #     assert_equal(1000, @pet_shop.cash)
  #   end
  #
  #   def test_petshop_starts_with_no_pets
  #     assert_equal(0, @pet_shop.count_pets())
  #   end
  #
  #   def test_petshop_can_add_pet
  #     @pet_shop.add_pet(@pet1)
  #     assert_equal(1, @pet_shop.count_pets())
  #   end
