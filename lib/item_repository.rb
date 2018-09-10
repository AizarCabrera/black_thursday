require 'CSV'
require 'pry'
require_relative './item'

class ItemRepository
 attr_reader :items

  def initialize(item_path)
    @items = []
    make_items(item_path)
  end

  def all
    @items
  end

  def make_items(item_path)
    CSV.foreach(item_path, headers: true, header_converters: :symbol) do |row|
      @items << Item.new(row)
      # binding.pry
    end
  end

  def find_by_id(id)
    @items.find do |item|
     item.id == id
    end
  end

  def find_by_name(name)
   @items.find do |item|
      item.name == name
    end
  end




end
