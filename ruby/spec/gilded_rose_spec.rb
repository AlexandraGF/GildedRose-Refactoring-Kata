require './lib/gilded_rose.rb'
require 'web_helpers.rb'

describe GildedRose do

  it 'check that class respond to update_quality method' do
    expect(gilded_rose).to respond_to(:update_quality)
  end

  it 'check that update_quality method is working' do
    expect((gilded_rose.update_quality)[0].sell_in).to eq(19)
  end

  it 'check that sell_in date does not increase' do
    expect((gilded_rose.update_quality)[1].sell_in).not_to eq(16)
  end

  it 'check that quality value equals the right value' do
    expect((gilded_rose.update_quality)[0].quality).to eq(16)
  end

  it 'check that quality value equals the right value(second example)' do
    expect((gilded_rose2.update_quality)[0].quality).to eq(15)
  end

  it 'check that quality value does not equal the wrong value' do
    expect((gilded_rose.update_quality)[0].quality).not_to eq(15)
  end

  it 'check that quality value does not go more than 50' do
    expect((gilded_rose3.update_quality)[0].quality).to eq(50)
  end

  it 'check that quality value does not go negative' do
    expect((gilded_rose4.update_quality)[0].quality).to eq(0)
  end
end
