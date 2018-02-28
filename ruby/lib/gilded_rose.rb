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


private
  def quality_down
    if @item.quality > 0 && @item.name != "Sulfuras, Hand of Ragnaros"
        @item.quality = @item.quality - 1
    end
  end

  def quality_up
    if @item.quality < 50
      @item.quality = @item.quality + 1
      if @item.name == "Backstage passes to a TAFKAL80ETC concert" || @item.name == "Aged Brie"
        if @item.sell_in < 11 && @item.sell_in > 5
          @item.quality = @item.quality + 1
        elsif @item.sell_in < 11 && @item.sell_in < 6
          @item.quality = @item.quality + 2
        end
      end
    end
  end

  def sell_in_date_down
    if @item.name != "Sulfuras, Hand of Ragnaros"
      @item.sell_in = @item.sell_in - 1
    end
  end

  def sell_in_date_negative
    if @item.sell_in < 0
      if @item.name != "Aged Brie"
        sell_in_date_negative_if_loop
      else
        sell_in_date_negative_else_loop
      end
    end
  end

  def sell_in_date_negative_if_loop
    if @item.name != "Backstage passes to a TAFKAL80ETC concert"
      if @item.quality > 0 && @item.name != "Sulfuras, Hand of Ragnaros"
          @item.quality = @item.quality - 1
      end
    else
      @item.quality = @item.quality - @item.quality
    end
  end

  def sell_in_date_negative_else_loop
    if @item.quality < 50
      @item.quality = @item.quality + 1
    end
  end

end
