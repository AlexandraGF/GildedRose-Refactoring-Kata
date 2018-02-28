require './lib/private_methods.rb'

class GildedRose

  attr_accessor :items

  def initialize(items)
    @items = items
  end

  def update_quality()
    @items.each do |item|
    @item = item
      if item.name != "Aged Brie" and item.name != "Backstage passes to a TAFKAL80ETC concert"
        quality_down
      else
        quality_up
      end
        sell_in_date_down
        sell_in_date_negative
    end
  end
end
