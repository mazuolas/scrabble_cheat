class PagesController < ApplicationController
  # GET /
  #
  def main
  end

  def search
    @searched_word = search_params[:query]
    if @searched_word[0] == " "
      @searched_word = @searched_word[1..-1]
      Word.add_fake_word(@searched_word)
    end
    @definitions = Word.definition(@searched_word)
    if @definitions.empty?
      render :word_not_found
    else
      render :search
    end
  end

  private

  def search_params
    params.require(:search).permit(:query)
  end
end
