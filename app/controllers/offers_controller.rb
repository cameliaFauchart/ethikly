class OffersController < ApplicationController
  def index
    @offers = Offer.includes(:company)
  end

  def show
    @offer = Offer.find(params[:id])
    @wishlist = Wishlist.new
  end
end
