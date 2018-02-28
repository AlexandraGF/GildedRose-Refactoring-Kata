class GildedRose

  attr_accessor :items

  def initialize(items)
    @items = items
    # @item
    # @quality
  end

  def update_quality()
    @items.each do |item|
@item = item
# @quality = item
      #first loop 1 start
      if item.name != "Aged Brie" and item.name != "Backstage passes to a TAFKAL80ETC concert"
# 1.1 start
        # if item.quality > 0 && item.name != "Sulfuras, Hand of Ragnaros"
        #     item.quality = item.quality - 1
        # end
 # private method for lowering the quality

        quality_down


      else
        quality_up
  # 1.2  start
#         if item.quality < 50
#           item.quality = item.quality + 1
#       # 1.2.1  start
#           if item.name == "Backstage passes to a TAFKAL80ETC concert" || item.name == "Aged Brie"
# # 1.2.1.1 start
#             if item.sell_in < 11 && item.sell_in > 5
#               item.quality = item.quality + 1
#             elsif item.sell_in < 11 && item.sell_in < 6
#               item.quality = item.quality + 2
#             end
# # 1.2.1.1 end
#           end
# # 1.2.1 end
#         end
#1.2 end
      end
#1.1 end

#second loop 2
      if item.name != "Sulfuras, Hand of Ragnaros"
        item.sell_in = item.sell_in - 1
      end
#third loop 3
      if item.sell_in < 0

        if item.name != "Aged Brie"

          if item.name != "Backstage passes to a TAFKAL80ETC concert"

            if item.quality > 0 && item.name != "Sulfuras, Hand of Ragnaros"
                item.quality = item.quality - 1
            end

          else
            item.quality = item.quality - item.quality
          end

        else
          if item.quality < 50
            item.quality = item.quality + 1
          end

        end

      end
#end of loop 3

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
  # 1.2.1  start
      if @item.name == "Backstage passes to a TAFKAL80ETC concert" || @item.name == "Aged Brie"
  # 1.2.1.1 start
        if @item.sell_in < 11 && @item.sell_in > 5
          @item.quality = @item.quality + 1
        elsif @item.sell_in < 11 && @item.sell_in < 6
          @item.quality = @item.quality + 2
        end
  # 1.2.1.1 end
      end
  # 1.2.1 end
    end
  end

end

class Item
  attr_accessor :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def to_s()
    "#{@name}, #{@sell_in}, #{@quality}"
  end
end
