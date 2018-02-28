require './lib/gilded_rose.rb'
require 'web_helpers.rb'

describe GildedRose do

  describe 'Basic tests: ' do
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

  describe 'further tests: ' do
    it 'check when quality is positiv' do
      expect((gilded_rose5_positiv1.update_quality)[0].quality).to eq(16)
      expect((gilded_rose5_positiv1.update_quality)[1].quality).to eq(10)
      expect((gilded_rose5_positiv1.update_quality)[2].quality).to eq(21)
      expect((gilded_rose5_positiv1.update_quality)[3].quality).to eq(10)
    end

    it 'check when quality is positiv(second case for Aged Brie)' do
      expect((gilded_rose5_positiv2.update_quality)[0].quality).to eq(11)
    end

    it 'check when quality is positiv(third case for Aged Brie)' do
      expect((gilded_rose5_positiv3.update_quality)[0].quality).to eq(5)
    end

    it 'check when quality is positiv(fourth case for Aged Brie)' do
      expect((gilded_rose5_positiv4.update_quality)[0].quality).to eq(0)
    end

  end
end
