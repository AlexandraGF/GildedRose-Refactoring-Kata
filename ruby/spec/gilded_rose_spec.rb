require './gilded_rose.rb'

describe GildedRose do

  it 'check that class respond to update_quality method' do
    items = Item.new("Aged Brie", 20, 15)
    gilded_rose = GildedRose.new(items)
    expect(gilded_rose).to respond_to(:update_quality)
  end
end
