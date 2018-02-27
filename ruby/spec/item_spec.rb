require './gilded_rose.rb'

describe Item do

  it 'check that class respond to name argument' do
    items = Item.new("Aged Brie", 20, 15)
    gilded_rose = GildedRose.new(items)
    expect(gilded_rose.items.name).to eq("Aged Brie")
  end

  it 'check that class respond to to_s method' do
    items = Item.new("Aged Brie", 20, 15)
    expect(items.to_s).to eq("Aged Brie, 20, 15")
  end
end
