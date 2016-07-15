class SiteController < ApplicationController
  # def search
  #   @term = params[:term]
  #   # @results = Artist.where name: @term
  #   # @results = Artist.where("name LIKE '#{@term}'")
  #   @results = Artist.where("name LIKE ?", "%#{@term}%")
  # end
  def search
    # artists = Artist.where("name LIKE ?", "%#{params[:term]}%")
    # albums = Album.where("name LIKE ?", "%#{params[:term]}%")
    # labels = Label.where("name LIKE ?", "%#{params[:term]}%")
    # @results = artists + albums + labels
    @results = [Artist, Album, Label].map do |model|
      model.where("name LIKE ?", "%#{params[:term]}%")
    end.flatten
  end
end
