class PagesController < ApplicationController
  # GET /
  #
  def main
  end

  def search
    @searched_word = search_params[:query]
    @definitions = ["test1", 'test2', 'test3']
  end

  private

  def search_params
    params.require(:search).permit(:query)
  end
end
