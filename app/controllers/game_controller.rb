class GameController < ApplicationController

  def index
    
    @a = Array.new
    0.upto(14) do |t|
      @a[t] = t + 1
    end
    @a = @a.shuffle
    @a[15] = ""

    
    render "game"
  end
end
