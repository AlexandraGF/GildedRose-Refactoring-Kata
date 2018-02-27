require './gilded_rose.rb'

describe GildedRose do
  it 'check that class respond to update_quality method' do
    items = Item.new('Aged Brie', 20, 15)
    gilded_rose = GildedRose.new(items)
    expect(gilded_rose).to respond_to(:update_quality)
  end

  it 'check that update_quality method is working' do
    items = Item.new('Aged Brie', 20, 15)
    items2 = Item.new('Aged Brie', 15, 10)
    gilded_rose = GildedRose.new([items,items2])
    expect((gilded_rose.update_quality)[0].sell_in).to eq(19)
  end

  it 'check that sell_in date does not increase' do
    items = Item.new('Aged Brie', 20, 15)
    items2 = Item.new('Aged Brie', 15, 10)
    gilded_rose = GildedRose.new([items,items2])
    expect((gilded_rose.update_quality)[1].sell_in).not_to eq(16)
  end

  it 'check that quality value equals the right value' do
    items = Item.new('Aged Brie', 20, 15)
    items2 = Item.new('Aged Brie', 15, 10)
    gilded_rose = GildedRose.new([items,items2])
    expect((gilded_rose.update_quality)[0].quality).to eq(16)
  end

  it 'check that quality value does not equal the wrong value' do
    items = Item.new('Aged Brie', 20, 15)
    items2 = Item.new('Aged Brie', 15, 10)
    gilded_rose = GildedRose.new([items,items2])
    expect((gilded_rose.update_quality)[0].quality).not_to eq(15)
  end
end
