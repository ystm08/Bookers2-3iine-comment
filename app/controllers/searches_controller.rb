class SearchesController < ApplicationController
  before_action :authenticate_user!

  def search
    @range = params[:range]
    @word = params[:word]
    @search = params[:search]

    if @range == "User"
      @records = User.looks(@search, @word)
    else
      @records = Book.looks(@search, @word)
    end
  end
end
