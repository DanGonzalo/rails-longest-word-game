class GamesController < ApplicationController
  def new
    @letters = []

    10.times do
      @letters << ("A".."Z").to_a.sample
    end
  end

  def score
    @word = params[:word]
    @grid = params[:grid].split
   
    valid = true
    @word.chars.each do |char|
      if !@grid.include?(char)
        valid = false
      end
    end

    if valid
      @message = "#{@word} is a valid input!"
    else
      @message = "#{@word} is a wrong input!"
    end
  end
end
