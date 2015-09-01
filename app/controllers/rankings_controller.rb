class RankingsController < ApplicationController
  
  def want
    @hash = Want.group(:item_id).order('count_all desc').limit(10).count
    arr = Array.new()
    @hash.each do |key, value|
      @items = arr.push(Item.find(key))
    end
  end
  
  def have
    @hash = Have.group(:item_id).order('count_all desc').limit(10).count
    arr = Array.new()
    @hash.each do |key, value|
      @items = arr.push(Item.find(key))
    end
  end
  
end
