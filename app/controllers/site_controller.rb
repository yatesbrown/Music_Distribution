class SiteController < ApplicationController
  def search
    @term = params[:term]
    # @results = Artist.where name: @term
    # @results = Artist.where("name LIKE '#{@term}'")
    @results = Artist.where("name LIKE ?", "#{params[:term]}")
  end
end
