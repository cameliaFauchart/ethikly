class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def show
    @offer = Offer.find[params:id]
    @wishlist = Wishlist.new
  end
end
