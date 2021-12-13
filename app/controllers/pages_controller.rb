class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about, :exposition ]

  def home
    @artworks = Artwork.all
  end

  def about
  end

  def exposition
  end
end
