def stock_picker(daily_prices)
  margin_to_beat = 0
  result = []
  daily_prices.each_with_index do |price_1, day_1|
    daily_prices.each_with_index do |price_2, day_2|
      unless day_2 <= day_1
        current_margin = price_2 - price_1
        if current_margin > margin_to_beat
          margin_to_beat = current_margin
          result = [day_1,day_2]
        end
      end
    end
  end
  result
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
