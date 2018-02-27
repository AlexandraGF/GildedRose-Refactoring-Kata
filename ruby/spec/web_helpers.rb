def gilded_rose
  items1 = Item.new('Aged Brie', 20, 15)
  items2 = Item.new('Aged Brie', 15, 10)
  GildedRose.new([items1,items2])
end

def gilded_rose2
items = Item.new('Sulfuras, Hand of Ragnaros', 20, 15)
items2 = Item.new('Aged Brie', 15, 10)
GildedRose.new([items,items2])
end

def gilded_rose3
  items = Item.new('Aged Brie', 20, 49)
  items2 = Item.new('Aged Brie', 15, 10)
  gilded_rose = GildedRose.new([items,items2])
  gilded_updated = gilded_rose.update_quality
  GildedRose.new(gilded_updated)
end

def gilded_rose4
  items = Item.new('Elixir of the Mongoose', 20, 1)
  items2 = Item.new('Aged Brie', 15, 10)
  gilded_rose = GildedRose.new([items,items2])
  gilded_updated = gilded_rose.update_quality
  GildedRose.new(gilded_updated)
end
