class ArtworksController < ApplicationController

  private

  def artwork_params
    params.require(:artwork).permit(:title, :description, :price, :photo)
  end
end
