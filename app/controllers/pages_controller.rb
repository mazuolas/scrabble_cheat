class PagesController < ApplicationController
  # GET /
  #
  def main
  end

  def search
    @searched_word = search_params[:query]
  end

  private

  def search_params
    params.require(:search).permit(:query)
  end
end
