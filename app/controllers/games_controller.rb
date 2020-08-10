class GamesController < ApplicationController

  def new
    # @numbers = [*('A'..'Z')].sample(10).join
    one = [*('A'..'Z')].sample(1).join
    two = [*('A'..'Z')].sample(1).join
    three = [*('A'..'Z')].sample(1).join
    four = [*('A'..'Z')].sample(1).join
    five = [*('A'..'Z')].sample(1).join
    six = [*('A'..'Z')].sample(1).join
    seven = [*('A'..'Z')].sample(1).join
    eight = [*('A'..'Z')].sample(1).join
    nine = [*('A'..'Z')].sample(1).join
    ten = [*('A'..'Z')].sample(1).join
    @numbers = one + two + three + four + five + six + seven + eight + nine + ten
  end

  def score
    @answer = params[:answer]
    if @numbers.include? @answer
      @userResponse = "#{@answer} can be built out of #{@numbers}"
    else @userResponse = "Not legit, bra"
    end
  end
end
