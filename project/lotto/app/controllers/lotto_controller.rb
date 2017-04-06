require 'open-uri'
require 'json'

class LottoController < ApplicationController

  def index
    lotto_hash = JSON.parse(open('http://www.nlotto.co.kr/common.do?method=getLottoNumber&drwNo=746').read)

    drw_numbers = []

    lotto_hash.each do |k, v|
      if k.include?('drwtNo')
        drw_numbers << v
      end
    end

    drw_numbers.sort!

    bonus_number = lotto_hash["bnusNo"]

    my_numbers = [*1..45].sample(6).sort

    match_numbers = my_numbers & drw_numbers

    match_cnt = match_numbers.count

    if(match_cnt == 6)
        result = '1등'
    elsif((match_cnt == 5) && my_numbers.include?(bonus_number))
        result = '2등'
    elsif match_cnt == 5
        result = '3등'
    elsif match_cnt == 4
        result = '4등'
    elsif match_cnt == 3
        result =  '5등'
    else
        result = '꽝'
    end

    @result = result
    @drw_numbers = drw_numbers
    @bonus_number = bonus_number
    @my_numbers = my_numbers
    @match_numbers = match_numbers
  end

  def image
    lotto_hash = JSON.parse(open('http://www.nlotto.co.kr/common.do?method=getLottoNumber&drwNo=746').read)

    drw_numbers = []

    lotto_hash.each do |k, v|
      if k.include?('drwtNo')
        drw_numbers << v.to_s
      end
    end

    drw_numbers.sort!

    bonus_number = lotto_hash["bnusNo"].to_s

    my_numbers = [*'1'..'45'].sample(6).sort

    match_numbers = (my_numbers & drw_numbers)

    match_cnt = match_numbers.count


    if(match_cnt == 6)
        result = '1등'
    elsif((match_cnt == 5) && my_numbers.include?(bonus_number))
        result = '2등'
    elsif match_cnt == 5
        result = '3등'
    elsif match_cnt == 4
        result = '4등'
    elsif match_cnt == 3
        result =  '5등'
    else
        result = '꽝'
    end

    @result = result
    @drw_numbers = drw_numbers
    @bonus_number = bonus_number
    @my_numbers = my_numbers
    @match_numbers = match_numbers

  end

end
