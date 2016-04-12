class PagesController < ApplicationController

  def fortune
    fortunes = ["You will die a fiery death.", "You will stumble upon a large sum of wealth.", "Be careful around stairs."]
    @todays_fortune = fortunes.sample
    lotto_numbers = ("1".."500").to_a.shuffle
    @winning_lotto_numbers = [lotto_numbers.pop, lotto_numbers.pop, lotto_numbers.pop, lotto_numbers.pop, lotto_numbers.pop, lotto_numbers.pop]
  end

  def bottles
    @num_of_bottles = 99
    count = 0
    @lyrics = []
    while @num_of_bottles > 1 do
      @lyrics[count] = "#{@num_of_bottles.to_s} bottles of beer on the wall, #{@num_of_bottles.to_s} bottles of beer. Take one down and pass it around, "
      @num_of_bottles -= 1
      @lyrics[count] += "#{@num_of_bottles.to_s} bottles of beer on the wall."
      count += 1
    end
    @lyrics_end = "#{@num_of_bottles.to_s} bottle of beer on the wall, #{@num_of_bottles.to_s} bottle of beer. Take one down and pass it around, no more bottles of beer on the wall. No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall."
  end
end