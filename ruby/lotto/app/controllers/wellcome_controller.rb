class WellcomeController < ApplicationController
  def index
    array = Array 1..45
    lotto_number = array.sample(7)
    @lotto_images = Array.new
    lotto_number.each do |number|
      @lotto_images << "Lotto/" + number.to_s + ".jpg"
    end
  end
end
