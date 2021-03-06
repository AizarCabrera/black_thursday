require './test/helper'

class ItemTest<Minitest::Test

  def setup
    @i = Item.new({
      :id          => 1,
      :name        => 'Pencil',
      :description => 'You can use it to write things',
      :unit_price  => BigDecimal.new(10.99,4),
      :created_at  => Time.now,
      :updated_at  => Time.now,
      :merchant_id => 2
                  })
  end

  def test_it_exists
    assert_instance_of Item, @i
  end

  def test_it_has_attributes
   assert_equal 1, @i.id
   assert_equal 'Pencil', @i.name
   assert_equal 'You can use it to write things', @i.description
   assert_instance_of BigDecimal, @i.unit_price
   assert_instance_of Time, @i.created_at
   assert_instance_of Time, @i.updated_at
   assert_equal 2, @i.merchant_id
  end

  def test_returns_price_as_float
  assert_equal 0.1, @i.unit_price_to_dollars
  assert_equal Float, @i.unit_price_to_dollars.class
  end

end
