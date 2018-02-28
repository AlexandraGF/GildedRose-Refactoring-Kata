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

def gilded_rose5_positiv1
  items1 = Item.new('Aged Brie', 20, 15)
  items2 = Item.new('Sulfuras, Hand of Ragnaros', 15, 10)
  items3 = Item.new('Backstage passes to a TAFKAL80ETC concert', 14, 20)
  items4 = Item.new('Elixir of the Mongoose', 10, 11)
  GildedRose.new([items1,items2,items3,items4])
end

def gilded_rose5_positiv2
  items1 = Item.new('Aged Brie', 9, 9)
  items2 = Item.new('Elixir of the Mongoose', 10, 11)
  GildedRose.new([items1,items2])
end

def gilded_rose5_positiv3
  items1 = Item.new('Aged Brie', 5, 2)
  items2 = Item.new('Elixir of the Mongoose', 10, 11)
  GildedRose.new([items1,items2])
end

def gilded_rose5_positiv4
  items1 = Item.new('Aged Brie', 15, -1)
  items2 = Item.new('Elixir of the Mongoose', 10, 11)
  GildedRose.new([items1,items2])
end

def gilded_rose_negativ
  items1 = Item.new('Aged Brie', 20, 3)
  items2 = Item.new('Sulfuras, Hand of Ragnaros', 15, 4)
  items3 = Item.new('Backstage passes to a TAFKAL80ETC concert', 14, 2)
  items4 = Item.new('Elixir of the Mongoose', -10, 2)
  GildedRose.new([items1,items2,items3,items4])
end
