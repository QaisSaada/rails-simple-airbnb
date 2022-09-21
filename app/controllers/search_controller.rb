class SearchController < ApplicationController
  @search = Search.new(Flat, params[:search])
  @flats = @search.run.paginate(page: params[:page], per_page: 20).order('name')
end