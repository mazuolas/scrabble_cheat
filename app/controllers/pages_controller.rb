class PagesController < ApplicationController
  # GET /
  #
  def main
  end

  def search
    @searched_word = search_params[:query]
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
